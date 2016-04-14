/*
 * DCTHEVCdct.cpp
 *
 *  Created on: 5 Mar 2016
 *      Author: vegan
 */

#include <stdlib.h>
//#include <math.h>
#include <algorithm>
#include <limits>
#include <assert.h>
#include <thread>

#include "DCTHEVCdct.hpp"
#include "DCTHEVC.hpp"

#define MATRIX_MULT true

#if MATRIX_MULT
/** NxN forward transform (2D) using brute force matrix multiplication (3 nested loops)
 *  \param block pointer to input data (residual)
 *  \param coeff pointer to output data (transform coefficients)
 *  \param uiStride stride of input data
 *  \param uiTrSize transform size (uiTrSize x uiTrSize)
 *  \param uiMode is Intra Prediction mode used in Mode-Dependent DCT/DST only
 */
Void xTr(Int bitDepth, Pel *block, TCoeff *coeff, UInt uiStride, UInt uiTrSize, Bool useDST, const Int maxLog2TrDynamicRange)
{
	UInt i,j,k;
	TCoeff iSum;
	TCoeff tmp[MAX_TU_SIZE * MAX_TU_SIZE];
	const TMatrixCoeff *iT;
	const SChar		g_aucConvertToBit[ MAX_CU_SIZE+1 ] =
	{\
			-1, -1, -1, -1,  0, -1, -1, -1, \
			1, -1, -1, -1, -1, -1, -1, -1, \
			2, -1, -1, -1, -1, -1, -1, -1, \
			-1, -1, -1, -1, -1, -1, -1, -1, \
			3, -1, -1, -1, -1, -1, -1, -1, \
			-1, -1, -1, -1, -1, -1, -1, -1, \
			-1, -1, -1, -1, -1, -1, -1, -1, \
			-1, -1, -1, -1, -1, -1, -1, -1, \
			4};   // from width to log2(width)-2
	UInt uiLog2TrSize = g_aucConvertToBit[ uiTrSize ] + 2;

	if (uiTrSize==4)
	{
		//    iT  = (useDST ? g_as_DST_MAT_4[TRANSFORM_FORWARD][0] : g_aiT4[TRANSFORM_FORWARD][0]);
		iT  = g_aiT4[TRANSFORM_FORWARD][0];
	}
	else if (uiTrSize==8)
	{
		iT = g_aiT8[TRANSFORM_FORWARD][0];
	}
	else if (uiTrSize==16)
	{
		iT = g_aiT16[TRANSFORM_FORWARD][0];
	}
	else if (uiTrSize==32)
	{
		iT = g_aiT32[TRANSFORM_FORWARD][0];
	}
	else
	{
		assert(0);
	}

	const Int TRANSFORM_MATRIX_SHIFT = g_transformMatrixShift[TRANSFORM_FORWARD];

	const Int shift_1st = (uiLog2TrSize +  bitDepth + TRANSFORM_MATRIX_SHIFT) - maxLog2TrDynamicRange;
	const Int shift_2nd = uiLog2TrSize + TRANSFORM_MATRIX_SHIFT;
	const Int add_1st = (shift_1st>0) ? (1<<(shift_1st-1)) : 0;
	const Int add_2nd = 1<<(shift_2nd-1);

	/* Horizontal transform */

	for (i=0; i<uiTrSize; i++)
	{
		for (j=0; j<uiTrSize; j++)
		{
			iSum = 0;
			for (k=0; k<uiTrSize; k++)
			{
				iSum += iT[i*uiTrSize+k]*block[j*uiStride+k];
			}
			tmp[i*uiTrSize+j] = (iSum + add_1st)>>shift_1st;
		}
	}

	/* Vertical transform */
	for (i=0; i<uiTrSize; i++)
	{
		for (j=0; j<uiTrSize; j++)
		{
			iSum = 0;
			for (k=0; k<uiTrSize; k++)
			{
				iSum += iT[i*uiTrSize+k]*tmp[j*uiTrSize+k];
			}
			coeff[i*uiTrSize+j] = (iSum + add_2nd)>>shift_2nd;
		}
	}
}

/** NxN inverse transform (2D) using brute force matrix multiplication (3 nested loops)
 *  \param coeff pointer to input data (transform coefficients)
 *  \param block pointer to output data (residual)
 *  \param uiStride stride of output data
 *  \param uiTrSize transform size (uiTrSize x uiTrSize)
 *  \param uiMode is Intra Prediction mode used in Mode-Dependent DCT/DST only
 */
Void xITr(Int bitDepth, TCoeff *coeff, Pel *block, UInt uiStride, UInt uiTrSize, Bool useDST, const Int maxLog2TrDynamicRange)
{
	UInt i,j,k;
	TCoeff iSum;
	TCoeff tmp[MAX_TU_SIZE * MAX_TU_SIZE];
	const TMatrixCoeff *iT;

	if (uiTrSize==4)
	{
		//    iT  = (useDST ? g_as_DST_MAT_4[TRANSFORM_INVERSE][0] : g_aiT4[TRANSFORM_INVERSE][0]);
		iT  = g_aiT4[TRANSFORM_INVERSE][0];
	}
	else if (uiTrSize==8)
	{
		iT = g_aiT8[TRANSFORM_INVERSE][0];
	}
	else if (uiTrSize==16)
	{
		iT = g_aiT16[TRANSFORM_INVERSE][0];
	}
	else if (uiTrSize==32)
	{
		iT = g_aiT32[TRANSFORM_INVERSE][0];
	}
	else
	{
		assert(0);
	}

	const Int TRANSFORM_MATRIX_SHIFT = g_transformMatrixShift[TRANSFORM_INVERSE];

	const Int shift_1st = TRANSFORM_MATRIX_SHIFT + 1; //1 has been added to shift_1st at the expense of shift_2nd
	const Int shift_2nd = (TRANSFORM_MATRIX_SHIFT + maxLog2TrDynamicRange - 1) - bitDepth;
	const TCoeff clipMinimum = -(1 << maxLog2TrDynamicRange);
	const TCoeff clipMaximum =  (1 << maxLog2TrDynamicRange) - 1;
	assert(shift_2nd>=0);
	const Int add_1st = 1<<(shift_1st-1);
	const Int add_2nd = (shift_2nd>0) ? (1<<(shift_2nd-1)) : 0;

	/* Horizontal transform */
	for (i=0; i<uiTrSize; i++)
	{
		for (j=0; j<uiTrSize; j++)
		{
			iSum = 0;
			for (k=0; k<uiTrSize; k++)
			{
				iSum += iT[k*uiTrSize+i]*coeff[k*uiTrSize+j];
			}

			// Clipping here is not in the standard, but is used to protect the "Pel" data type into which the inverse-transformed samples will be copied
			tmp[i*uiTrSize+j] = Clip3<TCoeff>(clipMinimum, clipMaximum, (iSum + add_1st)>>shift_1st);
		}
	}

	/* Vertical transform */
	for (i=0; i<uiTrSize; i++)
	{
		for (j=0; j<uiTrSize; j++)
		{
			iSum = 0;
			for (k=0; k<uiTrSize; k++)
			{
				iSum += iT[k*uiTrSize+j]*tmp[i*uiTrSize+k];
			}

			block[i*uiStride+j] = Clip3<TCoeff>(std::numeric_limits<Pel>::min(), std::numeric_limits<Pel>::max(), (iSum + add_2nd)>>shift_2nd);
		}
	}
}

#endif //MATRIX_MULT

Void partialButterfly4ThreadTwo(\
		TCoeff*	src, \
		TCoeff*	dst, \
		Int 	shift, \
		Int 	line, \
		TCoeff 	add, \
		Int 	k)
{
//	TCoeff a = *src;
//	TCoeff b = *(src+1);
	*dst = (g_aiT4[TRANSFORM_FORWARD][k][0]*(*src) + g_aiT4[TRANSFORM_FORWARD][k][1]*(*(src+1)) + add)>>shift;
}

Void partialButterfly4ThreadOneP(\
		TCoeff*	src1, \
		TCoeff*	src2, \
		TCoeff*	dst)
{
	/*TCoeff x = *src1 + *src2;
	 *dst = x;*/
	*dst = *src1 + *src2;
}

Void partialButterfly4ThreadOneN(\
		TCoeff*	src1, \
		TCoeff*	src2, \
		TCoeff*	dst)
{
	/*TCoeff x = *src1 - *src2;
	 *dst = x;*/
	*dst = *src1 - *src2;
}

Void partialButterfly4ThreadZero(\
		TCoeff*			src, \
		TCoeff*			dst, \
		Int 			shift, \
		Int 			line, \
		const TCoeff 	add)
{
	std::thread th[4];
	Int j;
	TCoeff E[2],O[2];

	th[0] = std::thread(partialButterfly4ThreadOneP, src, src+3, E);
	th[1] = std::thread(partialButterfly4ThreadOneN, src, src+3, O);
	th[2] = std::thread(partialButterfly4ThreadOneP, src+1, src+2, E+1);
	th[3] = std::thread(partialButterfly4ThreadOneN, src+1, src+2, O+1);

	for (j=0; j<4; j++) th[j].join();

	th[0] = std::thread(partialButterfly4ThreadTwo, E, dst, shift, line, add, 0);
	th[1] = std::thread(partialButterfly4ThreadTwo, O, dst + 1*line, shift, line, add, 1);
	th[2] = std::thread(partialButterfly4ThreadTwo, E, dst + 2*line, shift, line, add, 2);
	th[3] = std::thread(partialButterfly4ThreadTwo, O, dst + 3*line, shift, line, add, 3);

	for (j=0; j<4; j++) th[j].join();
}

/** 4x4 forward transform implemented using partial butterfly structure (1D)
 *  \param src   input data (residual)
 *  \param dst   output data (transform coefficients)
 *  \param shift specifies right shift after 1D transform
 *  \param line
 */
Void partialButterfly4(\
		TCoeff*	src, \
		TCoeff*	dst, \
		Int 	shift, \
		Int 	line)
{
	Int j;
	TCoeff add = (shift > 0) ? (1<<(shift-1)) : 0;
	std::thread th[4];

	for (j=0; j<4; j++)
	{
		th[j] = std::thread(partialButterfly4ThreadZero, src, dst, shift, line, add);
		src += 4;
		dst ++;
	}

	for (j=0; j<4; j++) th[j].join();
}



Void partialButterflyInverse4ThreadTwo(\
		TCoeff 			E, \
		TCoeff			O, \
		TCoeff*			dst, \
		Int 			shift, \
		const TCoeff 	outputMinimum, \
		const TCoeff 	outputMaximum, \
		TCoeff 			add)
{
	*dst = Clip3( outputMinimum, outputMaximum, (E + O + add)>>shift );
}

Void partialButterflyInverse4ThreadEO(\
		TCoeff*	src1, \
		TCoeff*	src2, \
		TCoeff*	dst, \
		Int 	indA, \
		Int 	indB, \
		Int 	indx)
{
	*dst = g_aiT4[TRANSFORM_INVERSE][indA][indx]*(*src1) + g_aiT4[TRANSFORM_INVERSE][indB][indx]*(*src2);
}


Void partialButterflyInverse4ThreadZero(\
		TCoeff*			src, \
		TCoeff*			dst, \
		Int 			shift, \
		Int 			line, \
		const TCoeff 	outputMinimum, \
		const TCoeff 	outputMaximum, \
		TCoeff 			add)
{
	Int j;
	TCoeff E[2],O[2];
	std::thread th[4];

	th[0] = std::thread(partialButterflyInverse4ThreadEO, src+line, src+3*line, O, 		1, 3, 0);
	th[1] = std::thread(partialButterflyInverse4ThreadEO, src+line, src+3*line, O+1, 	1, 3, 1);
	th[2] = std::thread(partialButterflyInverse4ThreadEO, src, 		src+2*line, E, 		0, 2, 0);
	th[3] = std::thread(partialButterflyInverse4ThreadEO, src, 		src+2*line, E+1, 	0, 2, 1);

	for (j=0; j<4; j++) th[j].join();

	th[0] = std::thread(partialButterflyInverse4ThreadTwo, E[0],  O[0], dst, 	shift, outputMinimum, outputMaximum, add);
	th[1] = std::thread(partialButterflyInverse4ThreadTwo, E[1],  O[1], dst+1, 	shift, outputMinimum, outputMaximum, add);
	th[2] = std::thread(partialButterflyInverse4ThreadTwo, E[1], -O[1], dst+2, 	shift, outputMinimum, outputMaximum, add);
	th[3] = std::thread(partialButterflyInverse4ThreadTwo, E[0], -O[0], dst+3, 	shift, outputMinimum, outputMaximum, add);

	for (j=0; j<4; j++) th[j].join();
}

/** 4x4 inverse transform implemented using partial butterfly structure (1D)
 *  \param src   input data (transform coefficients)
 *  \param dst   output data (residual)
 *  \param shift specifies right shift after 1D transform
 *  \param line
 *  \param outputMinimum  minimum for clipping
 *  \param outputMaximum  maximum for clipping
 */
Void partialButterflyInverse4(\
		TCoeff*			src, \
		TCoeff*			dst, \
		Int 			shift, \
		Int 			line, \
		const TCoeff 	outputMinimum, \
		const TCoeff 	outputMaximum)
{
	Int j;
	TCoeff add = (shift > 0) ? (1<<(shift-1)) : 0;
	std::thread th[4];

	for (j=0; j<4; j++)
	{
		th[j] = std::thread(partialButterflyInverse4ThreadZero, src, dst, shift, line, outputMinimum, outputMaximum, add);
		src++;
		dst += 4;
	}

	for (j=0; j<4; j++) th[j].join();
}




Void partialButterfly8ThreadOneB(\
		TCoeff*	src, \
		TCoeff*	dst, \
		Int 	shift, \
		Int 	line, \
		Int 	add, \
		Int 	indx)
{
	*dst = (g_aiT8[TRANSFORM_FORWARD][indx][0]*(*(src  )) + g_aiT8[TRANSFORM_FORWARD][indx][1]*(*(src+1)) +
			g_aiT8[TRANSFORM_FORWARD][indx][2]*(*(src+2)) + g_aiT8[TRANSFORM_FORWARD][indx][3]*(*(src+3)) + add)>>shift;
}

Void partialButterfly8ThreadOneA(\
		TCoeff*	src, \
		TCoeff*	dst, \
		Int 	shift, \
		Int 	line, \
		Int 	add, \
		Int 	indx)
{
	*dst = (g_aiT8[TRANSFORM_FORWARD][indx][0]*(*(src  )) + g_aiT8[TRANSFORM_FORWARD][indx][1]*(*(src+1)) + add)>>shift;
}

Void partialButterfly8ThreadZero(\
		TCoeff*			src, \
		TCoeff*			dst, \
		Int 			shift, \
		Int 			line, \
		const TCoeff 	add)
{
	Int j,k;
	TCoeff E[4],O[4];
	TCoeff EE[2],EO[2];

	std::thread th[line];

	/* E and O*/
	for (k=0;k<4;k++)
	{
		th[k] 		= std::thread(partialButterfly4ThreadOneP, src+k, src+7-k, E + k);
		th[k + 4] 	= std::thread(partialButterfly4ThreadOneN, src+k, src+7-k, O + k);
		/*E[k] = src[k] + src[7-k];
		O[k] = src[k] - src[7-k];*/
	}
	for (j=0; j<8; j++) th[j].join();

	/* EE and EO */
	/*
	EE[0] = E[0] + E[3];
	EO[0] = E[0] - E[3];
	EE[1] = E[1] + E[2];
	EO[1] = E[1] - E[2];
	 */

	th[0] 		= std::thread(partialButterfly4ThreadOneP, E, E + 3, EE);
	th[1] 		= std::thread(partialButterfly4ThreadOneN, E, E + 3, EO);
	th[2] 		= std::thread(partialButterfly4ThreadOneP, E+1, E+2, EE+1);
	th[3] 		= std::thread(partialButterfly4ThreadOneN, E+1, E+2, EO+1);

	for (j=0; j<4; j++) th[j].join();

	th[0] 		= std::thread(partialButterfly8ThreadOneA, EE, dst, 		shift, line, add, 0);
	th[1] 		= std::thread(partialButterfly8ThreadOneA, EE, dst+4*line, 	shift, line, add, 4);
	th[2] 		= std::thread(partialButterfly8ThreadOneA, EO, dst+2*line, 	shift, line, add, 2);
	th[3] 		= std::thread(partialButterfly8ThreadOneA, EO, dst+6*line, 	shift, line, add, 6);

	th[4] 		= std::thread(partialButterfly8ThreadOneB, O, dst+line, 	shift, line, add, 1);
	th[5] 		= std::thread(partialButterfly8ThreadOneB, O, dst+3*line, 	shift, line, add, 3);
	th[6] 		= std::thread(partialButterfly8ThreadOneB, O, dst+5*line, 	shift, line, add, 5);
	th[7] 		= std::thread(partialButterfly8ThreadOneB, O, dst+7*line, 	shift, line, add, 7);

	for (j=0; j<8; j++) th[j].join();
	/*
	dst[0]      = (g_aiT8[TRANSFORM_FORWARD][0][0]*EE[0] + g_aiT8[TRANSFORM_FORWARD][0][1]*EE[1] + add)>>shift;
	dst[4*line] = (g_aiT8[TRANSFORM_FORWARD][4][0]*EE[0] + g_aiT8[TRANSFORM_FORWARD][4][1]*EE[1] + add)>>shift;
	dst[2*line] = (g_aiT8[TRANSFORM_FORWARD][2][0]*EO[0] + g_aiT8[TRANSFORM_FORWARD][2][1]*EO[1] + add)>>shift;
	dst[6*line] = (g_aiT8[TRANSFORM_FORWARD][6][0]*EO[0] + g_aiT8[TRANSFORM_FORWARD][6][1]*EO[1] + add)>>shift;

	dst[line]   = (g_aiT8[TRANSFORM_FORWARD][1][0]*O[0] + g_aiT8[TRANSFORM_FORWARD][1][1]*O[1] + g_aiT8[TRANSFORM_FORWARD][1][2]*O[2] + g_aiT8[TRANSFORM_FORWARD][1][3]*O[3] + add)>>shift;
	dst[3*line] = (g_aiT8[TRANSFORM_FORWARD][3][0]*O[0] + g_aiT8[TRANSFORM_FORWARD][3][1]*O[1] + g_aiT8[TRANSFORM_FORWARD][3][2]*O[2] + g_aiT8[TRANSFORM_FORWARD][3][3]*O[3] + add)>>shift;
	dst[5*line] = (g_aiT8[TRANSFORM_FORWARD][5][0]*O[0] + g_aiT8[TRANSFORM_FORWARD][5][1]*O[1] + g_aiT8[TRANSFORM_FORWARD][5][2]*O[2] + g_aiT8[TRANSFORM_FORWARD][5][3]*O[3] + add)>>shift;
	dst[7*line] = (g_aiT8[TRANSFORM_FORWARD][7][0]*O[0] + g_aiT8[TRANSFORM_FORWARD][7][1]*O[1] + g_aiT8[TRANSFORM_FORWARD][7][2]*O[2] + g_aiT8[TRANSFORM_FORWARD][7][3]*O[3] + add)>>shift;
	 */
}

/** 8x8 forward transform implemented using partial butterfly structure (1D)
 *  \param src   input data (residual)
 *  \param dst   output data (transform coefficients)
 *  \param shift specifies right shift after 1D transform
 *  \param line
 */
Void partialButterfly8(\
		TCoeff*	src, \
		TCoeff*	dst, \
		Int 	shift, \
		Int 	line)
{
	Int j/*,k*/;
	//  TCoeff E[4],O[4];
	//  TCoeff EE[2],EO[2];
	TCoeff add = (shift > 0) ? (1<<(shift-1)) : 0;
	std::thread th[line];

	for (j=0; j<line; j++)
	{
		th[j] = std::thread(partialButterfly8ThreadZero, src, dst, shift, line, add);
		src += 8;
		dst ++;
	}
	for (j=0; j<line; j++) th[j].join();
}



Void partialButterflyInverse8threadZeroA(\
		TCoeff*	src, \
		Int 	line, \
		Int 	k,
		TCoeff*	dst)
{
	*(dst+k) = g_aiT8[TRANSFORM_INVERSE][ 1][k]*(*(src+line))   + g_aiT8[TRANSFORM_INVERSE][ 3][k]*(*(src+3*line)) +
			g_aiT8[TRANSFORM_INVERSE][ 5][k]*(*(src+5*line)) 	+ g_aiT8[TRANSFORM_INVERSE][ 7][k]*(*(src+7*line));
}

Void partialButterflyInverse8threadZeroB(\
		TCoeff*	src, \
		Int 	ai, \
		Int 	k, \
		Int 	bi, \
		Int 	line, \
		TCoeff*	dst)
{
	*(dst+k) = g_aiT8[TRANSFORM_INVERSE][ai][k]*(*(src+k*line)) + g_aiT8[TRANSFORM_INVERSE][bi][k]*(*(src+k*line));
}

Void partialButterflyInverse8threadOne(\
		TCoeff*			dst, \
		TCoeff*			E, \
		TCoeff*			O, \
		Int 			shift, \
		Int 			k, \
		Int 			s, \
		const TCoeff 	outputMinimum, \
		const TCoeff 	outputMaximum, \
		TCoeff 			add)
{
	*dst = Clip3( outputMinimum, outputMaximum, (*(E+k) + s*(*(O+k)) + add)>>shift );
}

Void partialButterflyInverse8threadZero(\
		TCoeff*			src, \
		TCoeff*			dst, \
		Int 			shift, \
		Int 			line, \
		const TCoeff 	outputMinimum, \
		const TCoeff 	outputMaximum, \
		TCoeff 			add)
{
	Int k;
	std::thread th[line];

	TCoeff E[4],O[4];
	TCoeff EE[2],EO[2];
	//	TCoeff add = (shift > 0) ? (1<<(shift-1)) : 0;
	/* Utilizing symmetry properties to the maximum to minimize the number of multiplications */
	for (k=0;k<4;k++)
	{
		th[k] = std::thread(partialButterflyInverse8threadZeroA, src, line, k, O);

		//				O[k] = g_aiT8[TRANSFORM_INVERSE][ 1][k]*src[line]   + g_aiT8[TRANSFORM_INVERSE][ 3][k]*src[3*line] +
		//						g_aiT8[TRANSFORM_INVERSE][ 5][k]*src[5*line] + g_aiT8[TRANSFORM_INVERSE][ 7][k]*src[7*line];
	}
	for (k = 0; k<4; k++) th[k].join();

	th[0] = std::thread(partialButterflyInverse8threadZeroB, src, 2, 0, 6, line, EO);
	th[1] = std::thread(partialButterflyInverse8threadZeroB, src, 2, 1, 6, line, EO);
	th[2] = std::thread(partialButterflyInverse8threadZeroB, src, 0, 0, 4, line, EE);
	th[3] = std::thread(partialButterflyInverse8threadZeroB, src, 0, 1, 4, line, EE);

	//		EO[0] = g_aiT8[TRANSFORM_INVERSE][2][0]*src[ 2*line ] + g_aiT8[TRANSFORM_INVERSE][6][0]*src[ 6*line ];
	//		EO[1] = g_aiT8[TRANSFORM_INVERSE][2][1]*src[ 2*line ] + g_aiT8[TRANSFORM_INVERSE][6][1]*src[ 6*line ];
	//		EE[0] = g_aiT8[TRANSFORM_INVERSE][0][0]*src[ 0      ] + g_aiT8[TRANSFORM_INVERSE][4][0]*src[ 4*line ];
	//		EE[1] = g_aiT8[TRANSFORM_INVERSE][0][1]*src[ 0      ] + g_aiT8[TRANSFORM_INVERSE][4][1]*src[ 4*line ];

	for (k = 0; k<4; k++) th[k].join();

	/* Combining even and odd terms at each hierarchy levels to calculate the final spatial domain vector */

	th[0] 		= std::thread(partialButterfly4ThreadOneP, EE, 		EO, 	E);
	th[1] 		= std::thread(partialButterfly4ThreadOneN, EE, 		EO, 	E+3);
	th[2] 		= std::thread(partialButterfly4ThreadOneP, EE+1, 	EO+1, 	E+1);
	th[3] 		= std::thread(partialButterfly4ThreadOneN, EE+1, 	EO+1, 	E+2);

	for (k = 0; k<4; k++) th[k].join();

	//		E[0] = EE[0] + EO[0];
	//		E[3] = EE[0] - EO[0];
	//		E[1] = EE[1] + EO[1];
	//		E[2] = EE[1] - EO[1];

	for (k=0;k<4;k++)
	{
		th[k*2] 	= std::thread(partialButterflyInverse4ThreadTwo, E[k], 		 O[k], 		dst+k, 		shift, outputMinimum, outputMaximum, add);
		th[k*2+1] 	= std::thread(partialButterflyInverse4ThreadTwo, E[3-k], 	-O[3-k], 	dst+k+4, 	shift, outputMinimum, outputMaximum, add);
		//				th[k*2] 	= std::thread(partialButterflyInverse8threadOne, dst+k, 	E, O, shift, k, 	 1, outputMinimum, outputMaximum, add);
		//				th[k*2+1] 	= std::thread(partialButterflyInverse8threadOne, dst+k+4, 	E, O, shift, 3-k, 	-1, outputMinimum, outputMaximum, add);

		//				dst[ k   ] = Clip3( outputMinimum, outputMaximum, (E[k] + O[k] + add)>>shift );
		//				dst[ k+4 ] = Clip3( outputMinimum, outputMaximum, (E[3-k] - O[3-k] + add)>>shift );
	}

	for (k=0;k<8;k++) th[k].join();
}

/** 8x8 inverse transform implemented using partial butterfly structure (1D)
 *  \param src   input data (transform coefficients)
 *  \param dst   output data (residual)
 *  \param shift specifies right shift after 1D transform
 *  \param line
 *  \param outputMinimum  minimum for clipping
 *  \param outputMaximum  maximum for clipping
 */
Void partialButterflyInverse8(
		TCoeff*			src, \
		TCoeff*			dst, \
		Int 			shift, \
		Int 			line, \
		const TCoeff 	outputMinimum, \
		const TCoeff 	outputMaximum)
{
	Int j;
	TCoeff add = (shift > 0) ? (1<<(shift-1)) : 0;
	std::thread th[line];

	for (j=0; j<line; j++)
	{
		th[j] = std::thread(partialButterflyInverse8threadZero, src, dst, shift, line, outputMinimum, outputMaximum, add);
		src ++;
		dst += 8;
	}
	for (j = 0; j<line; j++) th[j].join();
}

Void partialButterfly16threadZeroA(\
		TCoeff*	src, \
		Int 	k, \
		Int 	line, \
		TCoeff 	add, \
		Int 	shift, \
		TCoeff*	dst)
{
	*(dst+k*line) = (g_aiT16[TRANSFORM_FORWARD][k][0]*(*(src)) + g_aiT16[TRANSFORM_FORWARD][k][1]*(*(src+1)) + add)>>shift;
	//	dst[ 0      ] = (g_aiT16[TRANSFORM_FORWARD][ 0][0]*EEE[0] + g_aiT16[TRANSFORM_FORWARD][ 0][1]*EEE[1] + add)>>shift;
}

Void partialButterfly16threadZeroB(\
		TCoeff*	src, \
		Int 	k, \
		TCoeff 	add, \
		Int 	shift, \
		TCoeff*	dst)
{
	*dst = (g_aiT16[TRANSFORM_FORWARD][k][0]*(*(src)) 	+ g_aiT16[TRANSFORM_FORWARD][k][1]*(*(src+1)) +
			g_aiT16[TRANSFORM_FORWARD][k][2]*(*(src+2)) + g_aiT16[TRANSFORM_FORWARD][k][3]*(*(src+3)) + add)>>shift;
}

Void partialButterfly16threadZeroC(\
		TCoeff*	src, \
		Int 	k, \
		TCoeff 	add, \
		Int 	shift, \
		TCoeff*	dst)
{
	*dst = (g_aiT16[TRANSFORM_FORWARD][k][0]*(*(src)) 	+ g_aiT16[TRANSFORM_FORWARD][k][1]*(*(src+1)) +
			g_aiT16[TRANSFORM_FORWARD][k][2]*(*(src+2)) + g_aiT16[TRANSFORM_FORWARD][k][3]*(*(src+3)) +
			g_aiT16[TRANSFORM_FORWARD][k][4]*(*(src+4)) + g_aiT16[TRANSFORM_FORWARD][k][5]*(*(src+5)) +
			g_aiT16[TRANSFORM_FORWARD][k][6]*(*(src+6)) + g_aiT16[TRANSFORM_FORWARD][k][7]*(*(src+7)) + add)>>shift;
}

Void partialButterfly16threadZero(\
		TCoeff*	src, \
		TCoeff*	dst, \
		Int 	shift, \
		Int 	line, \
		TCoeff 	add)
{
	Int k;
	std::thread th[line];
	TCoeff E[8],O[8];
	TCoeff EE[4],EO[4];
	TCoeff EEE[2],EEO[2];
	/* E and O*/
	for (k=0;k<8;k++)
	{
		th[2*k] 		= std::thread(partialButterfly4ThreadOneP, src+k, 	src+15-k, 	E+k);
		th[2*k+1] 		= std::thread(partialButterfly4ThreadOneN, src+k, 	src+15-k, 	O+k);

		//		E[k] = src[k] + src[15-k];
		//		O[k] = src[k] - src[15-k];
	}
	for (k = 0; k<16; k++) th[k].join();

	/* EE and EO */
	for (k=0;k<4;k++)
	{
		th[2*k] 		= std::thread(partialButterfly4ThreadOneP, E+k, 	E+7-k, 	EE+k);
		th[2*k+1] 		= std::thread(partialButterfly4ThreadOneN, E+k, 	E+7-k, 	EO+k);

		//		EE[k] = E[k] + E[7-k];
		//		EO[k] = E[k] - E[7-k];
	}
	for (k = 0; k<8; k++) th[k].join();

	/* EEE and EEO */

	th[0] 		= std::thread(partialButterfly4ThreadOneP, EE, 		EE+3, 	EEE);
	th[1] 		= std::thread(partialButterfly4ThreadOneN, EE, 		EE+3, 	EEO);
	th[2] 		= std::thread(partialButterfly4ThreadOneP, EE+1, 	EE+2, 	EEE+1);
	th[3] 		= std::thread(partialButterfly4ThreadOneN, EE+1, 	EE+2, 	EEO+1);

	for (k = 0; k<4; k++) th[k].join();

	//	EEE[0] = EE[0] + EE[3];
	//	EEO[0] = EE[0] - EE[3];
	//	EEE[1] = EE[1] + EE[2];
	//	EEO[1] = EE[1] - EE[2];

	th[0] = std::thread(partialButterfly16threadZeroA, EEE,  0, line, add, shift, dst);
	th[1] = std::thread(partialButterfly16threadZeroA, EEE,  8, line, add, shift, dst);
	th[2] = std::thread(partialButterfly16threadZeroA, EEO,  4, line, add, shift, dst);
	th[3] = std::thread(partialButterfly16threadZeroA, EEO, 12, line, add, shift, dst);

	for (k = 0; k<4; k++) th[k].join();

	//	dst[ 0      ] = (g_aiT16[TRANSFORM_FORWARD][ 0][0]*EEE[0] + g_aiT16[TRANSFORM_FORWARD][ 0][1]*EEE[1] + add)>>shift;
	//	dst[ 8*line ] = (g_aiT16[TRANSFORM_FORWARD][ 8][0]*EEE[0] + g_aiT16[TRANSFORM_FORWARD][ 8][1]*EEE[1] + add)>>shift;
	//	dst[ 4*line ] = (g_aiT16[TRANSFORM_FORWARD][ 4][0]*EEO[0] + g_aiT16[TRANSFORM_FORWARD][ 4][1]*EEO[1] + add)>>shift;
	//	dst[ 12*line] = (g_aiT16[TRANSFORM_FORWARD][12][0]*EEO[0] + g_aiT16[TRANSFORM_FORWARD][12][1]*EEO[1] + add)>>shift;

	for (k=2;k<16;k+=4)
	{
		th[k] = std::thread(partialButterfly16threadZeroB, EO, k, add, shift, dst+k*line);
		//		dst[ k*line ] = (g_aiT16[TRANSFORM_FORWARD][k][0]*EO[0] + g_aiT16[TRANSFORM_FORWARD][k][1]*EO[1] +
		//				g_aiT16[TRANSFORM_FORWARD][k][2]*EO[2] + g_aiT16[TRANSFORM_FORWARD][k][3]*EO[3] + add)>>shift;
	}

	for (k=2;k<16;k+=4) th[k].join();

	for (k=1;k<16;k+=2)
	{
		th[k] = std::thread(partialButterfly16threadZeroC, O, k, add, shift, dst+k*line);
		//		dst[ k*line ] = (g_aiT16[TRANSFORM_FORWARD][k][0]*O[0] + g_aiT16[TRANSFORM_FORWARD][k][1]*O[1] +
		//				g_aiT16[TRANSFORM_FORWARD][k][2]*O[2] + g_aiT16[TRANSFORM_FORWARD][k][3]*O[3] +
		//				g_aiT16[TRANSFORM_FORWARD][k][4]*O[4] + g_aiT16[TRANSFORM_FORWARD][k][5]*O[5] +
		//				g_aiT16[TRANSFORM_FORWARD][k][6]*O[6] + g_aiT16[TRANSFORM_FORWARD][k][7]*O[7] + add)>>shift;
	}

	for (k=1;k<16;k+=2) th[k].join();
}

/** 16x16 forward transform implemented using partial butterfly structure (1D)
 *  \param src   input data (residual)
 *  \param dst   output data (transform coefficients)
 *  \param shift specifies right shift after 1D transform
 *  \param line
 */
Void partialButterfly16(\
		TCoeff*	src, \
		TCoeff*	dst, \
		Int 	shift, \
		Int 	line)
{
	Int j;
	std::thread th[line];
	TCoeff add = (shift > 0) ? (1<<(shift-1)) : 0;

	for (j=0; j<line; j++)
	{
		th[j] = std::thread(partialButterfly16threadZero, src, dst, shift, line, add);
		//		/* E and O*/
		//		for (k=0;k<8;k++)
		//		{
		//			E[k] = src[k] + src[15-k];
		//			O[k] = src[k] - src[15-k];
		//		}
		//		/* EE and EO */
		//		for (k=0;k<4;k++)
		//		{
		//			EE[k] = E[k] + E[7-k];
		//			EO[k] = E[k] - E[7-k];
		//		}
		//		/* EEE and EEO */
		//		EEE[0] = EE[0] + EE[3];
		//		EEO[0] = EE[0] - EE[3];
		//		EEE[1] = EE[1] + EE[2];
		//		EEO[1] = EE[1] - EE[2];
		//
		//		dst[ 0      ] = (g_aiT16[TRANSFORM_FORWARD][ 0][0]*EEE[0] + g_aiT16[TRANSFORM_FORWARD][ 0][1]*EEE[1] + add)>>shift;
		//		dst[ 8*line ] = (g_aiT16[TRANSFORM_FORWARD][ 8][0]*EEE[0] + g_aiT16[TRANSFORM_FORWARD][ 8][1]*EEE[1] + add)>>shift;
		//		dst[ 4*line ] = (g_aiT16[TRANSFORM_FORWARD][ 4][0]*EEO[0] + g_aiT16[TRANSFORM_FORWARD][ 4][1]*EEO[1] + add)>>shift;
		//		dst[ 12*line] = (g_aiT16[TRANSFORM_FORWARD][12][0]*EEO[0] + g_aiT16[TRANSFORM_FORWARD][12][1]*EEO[1] + add)>>shift;
		//
		//		for (k=2;k<16;k+=4)
		//		{
		//			dst[ k*line ] = (g_aiT16[TRANSFORM_FORWARD][k][0]*EO[0] + g_aiT16[TRANSFORM_FORWARD][k][1]*EO[1] +
		//					g_aiT16[TRANSFORM_FORWARD][k][2]*EO[2] + g_aiT16[TRANSFORM_FORWARD][k][3]*EO[3] + add)>>shift;
		//		}
		//
		//		for (k=1;k<16;k+=2)
		//		{
		//			dst[ k*line ] = (g_aiT16[TRANSFORM_FORWARD][k][0]*O[0] + g_aiT16[TRANSFORM_FORWARD][k][1]*O[1] +
		//					g_aiT16[TRANSFORM_FORWARD][k][2]*O[2] + g_aiT16[TRANSFORM_FORWARD][k][3]*O[3] +
		//					g_aiT16[TRANSFORM_FORWARD][k][4]*O[4] + g_aiT16[TRANSFORM_FORWARD][k][5]*O[5] +
		//					g_aiT16[TRANSFORM_FORWARD][k][6]*O[6] + g_aiT16[TRANSFORM_FORWARD][k][7]*O[7] + add)>>shift;
		//		}

		src += 16;
		dst ++;
	}
	for (j = 0; j<line; j++) th[j].join();
}


Void partialButterflyInverse16threadZeroA(\
		TCoeff* 	src, \
		Int 		line, \
		Int			k, \
		TCoeff* 	dst)
{
	*(dst+k) = g_aiT16[TRANSFORM_INVERSE][ 1][k]*src[   line] + g_aiT16[TRANSFORM_INVERSE][ 3][k]*src[ 3*line] +
			g_aiT16[TRANSFORM_INVERSE][ 5][k]*src[ 5*line] + g_aiT16[TRANSFORM_INVERSE][ 7][k]*src[ 7*line] +
			g_aiT16[TRANSFORM_INVERSE][ 9][k]*src[ 9*line] + g_aiT16[TRANSFORM_INVERSE][11][k]*src[11*line] +
			g_aiT16[TRANSFORM_INVERSE][13][k]*src[13*line] + g_aiT16[TRANSFORM_INVERSE][15][k]*src[15*line];
}

Void partialButterflyInverse16threadZeroB(\
		TCoeff* 	src, \
		Int 		line, \
		Int			k, \
		TCoeff* 	dst)
{
	*(dst+k) = 	g_aiT16[TRANSFORM_INVERSE][ 2][k]*src[ 2*line] + g_aiT16[TRANSFORM_INVERSE][ 6][k]*src[ 6*line] +
			g_aiT16[TRANSFORM_INVERSE][10][k]*src[ 10*line] + g_aiT16[TRANSFORM_INVERSE][14][k]*src[14*line];
	//	EO[k] = g_aiT16[TRANSFORM_INVERSE][ 2][k]*src[ 2*line] + g_aiT16[TRANSFORM_INVERSE][ 6][k]*src[ 6*line] +
	//					g_aiT16[TRANSFORM_INVERSE][10][k]*src[10*line] + g_aiT16[TRANSFORM_INVERSE][14][k]*src[14*line];
}

Void partialButterflyInverse16threadZeroC(\
		TCoeff* 	src, \
		Int 		ai, \
		Int 		bi, \
		Int 		k, \
		Int 		line, \
		TCoeff* 	dst)
{
	*(dst+k) = g_aiT16[TRANSFORM_INVERSE][ai][k]*src[ai*line ] + g_aiT16[TRANSFORM_INVERSE][bi][k]*src[bi*line ];
}

Void partialButterflyInverse16threadZero(\
		TCoeff*			src, \
		TCoeff*			dst, \
		Int 			shift, \
		Int 			line, \
		const TCoeff 	outputMinimum, \
		const TCoeff 	outputMaximum, \
		TCoeff 			add)
{
	Int k;
	std::thread th[16];
	TCoeff 		E[8],	O[8];
	TCoeff 		EE[4],	EO[4];
	TCoeff 		EEE[2],	EEO[2];

	/* Utilizing symmetry properties to the maximum to minimize the number of multiplications */
	for (k=0;k<8;k++)
	{
		th[k] = std::thread(partialButterflyInverse16threadZeroA, src, line, k, O);
		//		O[k] =  g_aiT16[TRANSFORM_INVERSE][ 1][k]*src[ line]   + g_aiT16[TRANSFORM_INVERSE][ 3][k]*src[ 3*line] +
		//				g_aiT16[TRANSFORM_INVERSE][ 5][k]*src[ 5*line] + g_aiT16[TRANSFORM_INVERSE][ 7][k]*src[ 7*line] +
		//				g_aiT16[TRANSFORM_INVERSE][ 9][k]*src[ 9*line] + g_aiT16[TRANSFORM_INVERSE][11][k]*src[11*line] +
		//				g_aiT16[TRANSFORM_INVERSE][13][k]*src[13*line] + g_aiT16[TRANSFORM_INVERSE][15][k]*src[15*line];
	}
	for (k = 0; k<8; k++) th[k].join();

	for (k=0;k<4;k++)
	{
		th[k] = std::thread(partialButterflyInverse16threadZeroB, src, line, k, EO);
		//		EO[k] = g_aiT16[TRANSFORM_INVERSE][ 2][k]*src[ 2*line] + g_aiT16[TRANSFORM_INVERSE][ 6][k]*src[ 6*line] +
		//				g_aiT16[TRANSFORM_INVERSE][10][k]*src[10*line] + g_aiT16[TRANSFORM_INVERSE][14][k]*src[14*line];
	}

	for (k = 0; k<4; k++) th[k].join();

	th[0] = std::thread(partialButterflyInverse16threadZeroC, src, 4, 12, 	0, line, EEO);
	th[1] = std::thread(partialButterflyInverse16threadZeroC, src, 0, 8, 	0, line, EEE);
	th[2] = std::thread(partialButterflyInverse16threadZeroC, src, 4, 12, 	1, line, EEO);
	th[3] = std::thread(partialButterflyInverse16threadZeroC, src, 0, 8, 	1, line, EEE);

	for (k = 0; k<4; k++) th[k].join();

	//	EEO[0] = g_aiT16[TRANSFORM_INVERSE][4][0]*src[ 4*line ] + g_aiT16[TRANSFORM_INVERSE][12][0]*src[ 12*line ];
	//	EEE[0] = g_aiT16[TRANSFORM_INVERSE][0][0]*src[ 0      ] + g_aiT16[TRANSFORM_INVERSE][ 8][0]*src[ 8*line  ];
	//	EEO[1] = g_aiT16[TRANSFORM_INVERSE][4][1]*src[ 4*line ] + g_aiT16[TRANSFORM_INVERSE][12][1]*src[ 12*line ];
	//	EEE[1] = g_aiT16[TRANSFORM_INVERSE][0][1]*src[ 0      ] + g_aiT16[TRANSFORM_INVERSE][ 8][1]*src[ 8*line  ];

	/* Combining even and odd terms at each hierarchy levels to calculate the final spatial domain vector */
	for (k=0;k<2;k++)
	{
		th[2*k	] = std::thread(partialButterfly4ThreadOneP, EEE+k, 	EEO+k, 		EE+k);
		th[2*k+1] = std::thread(partialButterfly4ThreadOneN, EEE+1-k, 	EEO+1-k, 	EE+k+2);

		//		EE[k] = EEE[k] + EEO[k];
		//		EE[k+2] = EEE[1-k] - EEO[1-k];
	}

	for (k = 0; k<4; k++) th[k].join();

	for (k=0;k<4;k++)
	{
		th[2*k	] = std::thread(partialButterfly4ThreadOneP, EE+k, 		EO+k, 	E+k);
		th[2*k+1] = std::thread(partialButterfly4ThreadOneN, EE+3-k, 	EO+3-k, E+k+4);

		//		E[k] = EE[k] + EO[k];
		//		E[k+4] = EE[3-k] - EO[3-k];
	}

	for (k = 0; k<8; k++) th[k].join();

	for (k=0;k<8;k++)
	{
		th[k*2] 	= std::thread(partialButterflyInverse4ThreadTwo, E[k], 		 O[k], 		dst+k, 		shift, outputMinimum, outputMaximum, add);
		th[k*2+1] 	= std::thread(partialButterflyInverse4ThreadTwo, E[7-k], 	-O[7-k], 	dst+k+8, 	shift, outputMinimum, outputMaximum, add);

		//		dst[k]   = Clip3( outputMinimum, outputMaximum, (E[k] + O[k] + add)>>shift );
		//		dst[k+8] = Clip3( outputMinimum, outputMaximum, (E[7-k] - O[7-k] + add)>>shift );
	}
	for (k = 0; k<16; k++) th[k].join();
}

/** 16x16 inverse transform implemented using partial butterfly structure (1D)
 *  \param src            input data (transform coefficients)
 *  \param dst            output data (residual)
 *  \param shift          specifies right shift after 1D transform
 *  \param line
 *  \param outputMinimum  minimum for clipping
 *  \param outputMaximum  maximum for clipping
 */
Void partialButterflyInverse16(\
		TCoeff*			src, \
		TCoeff*			dst, \
		Int 			shift, \
		Int 			line, \
		const TCoeff 	outputMinimum, \
		const TCoeff 	outputMaximum)
{
	Int j;//,k;
	std::thread th[16];
	//	TCoeff E[8],O[8];
	//	TCoeff EE[4],EO[4];
	//	TCoeff EEE[2],EEO[2];
	TCoeff add = (shift > 0) ? (1<<(shift-1)) : 0;

	for (j=0; j<line; j++)
	{
		th[j] = std::thread(partialButterflyInverse16threadZero, src, dst, shift, line, outputMinimum, outputMaximum, add);

		//		/* Utilizing symmetry properties to the maximum to minimize the number of multiplications */
		//		for (k=0;k<8;k++)
		//		{
		//			O[k] = g_aiT16[TRANSFORM_INVERSE][ 1][k]*src[ line]   + g_aiT16[TRANSFORM_INVERSE][ 3][k]*src[ 3*line] +
		//					g_aiT16[TRANSFORM_INVERSE][ 5][k]*src[ 5*line] + g_aiT16[TRANSFORM_INVERSE][ 7][k]*src[ 7*line] +
		//					g_aiT16[TRANSFORM_INVERSE][ 9][k]*src[ 9*line] + g_aiT16[TRANSFORM_INVERSE][11][k]*src[11*line] +
		//					g_aiT16[TRANSFORM_INVERSE][13][k]*src[13*line] + g_aiT16[TRANSFORM_INVERSE][15][k]*src[15*line];
		//		}
		//		for (k=0;k<4;k++)
		//		{
		//			EO[k] = g_aiT16[TRANSFORM_INVERSE][ 2][k]*src[ 2*line] + g_aiT16[TRANSFORM_INVERSE][ 6][k]*src[ 6*line] +
		//					g_aiT16[TRANSFORM_INVERSE][10][k]*src[10*line] + g_aiT16[TRANSFORM_INVERSE][14][k]*src[14*line];
		//		}
		//		EEO[0] = g_aiT16[TRANSFORM_INVERSE][4][0]*src[ 4*line ] + g_aiT16[TRANSFORM_INVERSE][12][0]*src[ 12*line ];
		//		EEE[0] = g_aiT16[TRANSFORM_INVERSE][0][0]*src[ 0      ] + g_aiT16[TRANSFORM_INVERSE][ 8][0]*src[ 8*line  ];
		//		EEO[1] = g_aiT16[TRANSFORM_INVERSE][4][1]*src[ 4*line ] + g_aiT16[TRANSFORM_INVERSE][12][1]*src[ 12*line ];
		//		EEE[1] = g_aiT16[TRANSFORM_INVERSE][0][1]*src[ 0      ] + g_aiT16[TRANSFORM_INVERSE][ 8][1]*src[ 8*line  ];
		//
		//		/* Combining even and odd terms at each hierarchy levels to calculate the final spatial domain vector */
		//		for (k=0;k<2;k++)
		//		{
		//			EE[k] = EEE[k] + EEO[k];
		//			EE[k+2] = EEE[1-k] - EEO[1-k];
		//		}
		//		for (k=0;k<4;k++)
		//		{
		//			E[k] = EE[k] + EO[k];
		//			E[k+4] = EE[3-k] - EO[3-k];
		//		}
		//		for (k=0;k<8;k++)
		//		{
		//			dst[k]   = Clip3( outputMinimum, outputMaximum, (E[k] + O[k] + add)>>shift );
		//			dst[k+8] = Clip3( outputMinimum, outputMaximum, (E[7-k] - O[7-k] + add)>>shift );
		//		}
		src ++;
		dst += 16;
	}
	for (j = 0; j<line; j++) th[j].join();
}



Void partialButterfly32threadZeroA(\
		TCoeff* src, \
		TCoeff* dst, \
		Int 	k, \
		Int 	line, \
		TCoeff 	add, \
		Int 	shift)
{
	*(dst+k*line) = (g_aiT32[TRANSFORM_FORWARD][k][0]*(*(src)) + g_aiT32[TRANSFORM_FORWARD][k][1]*(*(src+1)) + add)>>shift;
	//	dst[ 16*line ] = (g_aiT32[TRANSFORM_FORWARD][16][0]*EEEE[0] + g_aiT32[TRANSFORM_FORWARD][16][1]*EEEE[1] + add)>>shift;
}

Void partialButterfly32threadZeroB(\
		TCoeff* src, \
		TCoeff* dst, \
		Int 	k, \
		Int 	line, \
		TCoeff 	add, \
		Int 	shift)
{
	*(dst+k*line) = (g_aiT32[TRANSFORM_FORWARD][k][0]*(*(src)) + g_aiT32[TRANSFORM_FORWARD][k][1]*(*(src+1)) +
			g_aiT32[TRANSFORM_FORWARD][k][2]*(*(src+2)) + g_aiT32[TRANSFORM_FORWARD][k][3]*(*(src+3)) + add)>>shift;
	//	dst[ k*line ] = (g_aiT32[TRANSFORM_FORWARD][k][0]*EEO[0] + g_aiT32[TRANSFORM_FORWARD][k][1]*EEO[1] +
	//					g_aiT32[TRANSFORM_FORWARD][k][2]*EEO[2] + g_aiT32[TRANSFORM_FORWARD][k][3]*EEO[3] + add)>>shift;
}

Void partialButterfly32threadZeroC(\
		TCoeff* src, \
		TCoeff* dst, \
		Int 	k, \
		Int 	line, \
		TCoeff 	add, \
		Int 	shift)
{
	*(dst+k*line) = (g_aiT32[TRANSFORM_FORWARD][k][0]*(*(src)) + g_aiT32[TRANSFORM_FORWARD][k][1]*(*(src+1)) +
			g_aiT32[TRANSFORM_FORWARD][k][2]*(*(src+2)) + g_aiT32[TRANSFORM_FORWARD][k][3]*(*(src+3)) +
			g_aiT32[TRANSFORM_FORWARD][k][4]*(*(src+4)) + g_aiT32[TRANSFORM_FORWARD][k][5]*(*(src+5)) +
			g_aiT32[TRANSFORM_FORWARD][k][6]*(*(src+6)) + g_aiT32[TRANSFORM_FORWARD][k][7]*(*(src+7)) + add)>>shift;

	//dst[ k*line ] = (g_aiT32[TRANSFORM_FORWARD][k][0]*EO[0] + g_aiT32[TRANSFORM_FORWARD][k][1]*EO[1] +
	//		g_aiT32[TRANSFORM_FORWARD][k][2]*EO[2] + g_aiT32[TRANSFORM_FORWARD][k][3]*EO[3] +
	//		g_aiT32[TRANSFORM_FORWARD][k][4]*EO[4] + g_aiT32[TRANSFORM_FORWARD][k][5]*EO[5] +
	//		g_aiT32[TRANSFORM_FORWARD][k][6]*EO[6] + g_aiT32[TRANSFORM_FORWARD][k][7]*EO[7] + add)>>shift;
}

Void partialButterfly32threadZeroD(\
		TCoeff* src, \
		TCoeff* dst, \
		Int 	k, \
		Int 	line, \
		TCoeff 	add, \
		Int 	shift)
{
	*(dst+k*line) = (g_aiT32[TRANSFORM_FORWARD][k][ 0]*(*(src)) + g_aiT32[TRANSFORM_FORWARD][k][ 1]*(*(src+1)) +
			g_aiT32[TRANSFORM_FORWARD][k][ 2]*(*(src+2)) 	+ g_aiT32[TRANSFORM_FORWARD][k][ 3]*(*(src+3)) +
			g_aiT32[TRANSFORM_FORWARD][k][ 4]*(*(src+4)) 	+ g_aiT32[TRANSFORM_FORWARD][k][ 5]*(*(src+5)) +
			g_aiT32[TRANSFORM_FORWARD][k][ 6]*(*(src+6)) 	+ g_aiT32[TRANSFORM_FORWARD][k][ 7]*(*(src+7)) +
			g_aiT32[TRANSFORM_FORWARD][k][ 8]*(*(src+8)) 	+ g_aiT32[TRANSFORM_FORWARD][k][ 9]*(*(src+9)) +
			g_aiT32[TRANSFORM_FORWARD][k][10]*(*(src+10)) 	+ g_aiT32[TRANSFORM_FORWARD][k][11]*(*(src+11)) +
			g_aiT32[TRANSFORM_FORWARD][k][12]*(*(src+12)) 	+ g_aiT32[TRANSFORM_FORWARD][k][13]*(*(src+13)) +
			g_aiT32[TRANSFORM_FORWARD][k][14]*(*(src+14)) 	+ g_aiT32[TRANSFORM_FORWARD][k][15]*(*(src+15)) + add)>>shift;

	//	dst[ k*line ] = (g_aiT32[TRANSFORM_FORWARD][k][ 0]*O[ 0] + g_aiT32[TRANSFORM_FORWARD][k][ 1]*O[ 1] +
	//					g_aiT32[TRANSFORM_FORWARD][k][ 2]*O[ 2] + g_aiT32[TRANSFORM_FORWARD][k][ 3]*O[ 3] +
	//					g_aiT32[TRANSFORM_FORWARD][k][ 4]*O[ 4] + g_aiT32[TRANSFORM_FORWARD][k][ 5]*O[ 5] +
	//					g_aiT32[TRANSFORM_FORWARD][k][ 6]*O[ 6] + g_aiT32[TRANSFORM_FORWARD][k][ 7]*O[ 7] +
	//					g_aiT32[TRANSFORM_FORWARD][k][ 8]*O[ 8] + g_aiT32[TRANSFORM_FORWARD][k][ 9]*O[ 9] +
	//					g_aiT32[TRANSFORM_FORWARD][k][10]*O[10] + g_aiT32[TRANSFORM_FORWARD][k][11]*O[11] +
	//					g_aiT32[TRANSFORM_FORWARD][k][12]*O[12] + g_aiT32[TRANSFORM_FORWARD][k][13]*O[13] +
	//					g_aiT32[TRANSFORM_FORWARD][k][14]*O[14] + g_aiT32[TRANSFORM_FORWARD][k][15]*O[15] + add)>>shift;
}

Void partialButterfly32threadZero(\
		TCoeff* src, \
		TCoeff* dst, \
		Int 	shift, \
		Int 	line, \
		TCoeff 	add)
{
	Int k;
	std::thread th[32];
	TCoeff E[16],O[16];
	TCoeff EE[8],EO[8];
	TCoeff EEE[4],EEO[4];
	TCoeff EEEE[2],EEEO[2];

	/* E and O*/
	for (k=0;k<16;k++)
	{
		th[2*k	] = std::thread(partialButterfly4ThreadOneP, src+k, src+31-k, E+k);
		th[2*k+1] = std::thread(partialButterfly4ThreadOneN, src+k, src+31-k, O+k);

		//		E[k] = src[k] + src[31-k];
		//		O[k] = src[k] - src[31-k];
	}

	for (k = 0; k<32; k++) th[k].join();

	/* EE and EO */
	for (k=0;k<8;k++)
	{
		th[2*k	] = std::thread(partialButterfly4ThreadOneP, E+k, E+15-k, EE+k);
		th[2*k+1] = std::thread(partialButterfly4ThreadOneN, E+k, E+15-k, EO+k);

		//		EE[k] = E[k] + E[15-k];
		//		EO[k] = E[k] - E[15-k];
	}

	for (k = 0; k<16; k++) th[k].join();

	/* EEE and EEO */
	for (k=0;k<4;k++)
	{
		th[2*k	] = std::thread(partialButterfly4ThreadOneP, EE+k, EE+7-k, EEE+k);
		th[2*k+1] = std::thread(partialButterfly4ThreadOneN, EE+k, EE+7-k, EEO+k);

		//		EEE[k] = EE[k] + EE[7-k];
		//		EEO[k] = EE[k] - EE[7-k];
	}

	for (k = 0; k<8; k++) th[k].join();

	/* EEEE and EEEO */
	th[0] = std::thread(partialButterfly4ThreadOneP, EEE, 	EEE+3, EEEE);
	th[1] = std::thread(partialButterfly4ThreadOneN, EEE, 	EEE+3, EEEO);
	th[2] = std::thread(partialButterfly4ThreadOneP, EEE+1, EEE+2, EEEE+1);
	th[3] = std::thread(partialButterfly4ThreadOneN, EEE+1, EEE+2, EEEO+1);

	//	EEEE[0] = EEE[0] + EEE[3];
	//	EEEO[0] = EEE[0] - EEE[3];
	//	EEEE[1] = EEE[1] + EEE[2];
	//	EEEO[1] = EEE[1] - EEE[2];

	for (k = 0; k<4; k++) th[k].join();

	th[0] = std::thread(partialButterfly32threadZeroA, EEEE, dst,  0, line, add, shift);
	th[1] = std::thread(partialButterfly32threadZeroA, EEEE, dst, 16, line, add, shift);
	th[2] = std::thread(partialButterfly32threadZeroA, EEEO, dst,  8, line, add, shift);
	th[3] = std::thread(partialButterfly32threadZeroA, EEEO, dst, 24, line, add, shift);

	//	dst[ 0       ] = (g_aiT32[TRANSFORM_FORWARD][ 0][0]*EEEE[0] + g_aiT32[TRANSFORM_FORWARD][ 0][1]*EEEE[1] + add)>>shift;
	//	dst[ 16*line ] = (g_aiT32[TRANSFORM_FORWARD][16][0]*EEEE[0] + g_aiT32[TRANSFORM_FORWARD][16][1]*EEEE[1] + add)>>shift;
	//	dst[ 8*line  ] = (g_aiT32[TRANSFORM_FORWARD][ 8][0]*EEEO[0] + g_aiT32[TRANSFORM_FORWARD][ 8][1]*EEEO[1] + add)>>shift;
	//	dst[ 24*line ] = (g_aiT32[TRANSFORM_FORWARD][24][0]*EEEO[0] + g_aiT32[TRANSFORM_FORWARD][24][1]*EEEO[1] + add)>>shift;

	for (k = 0; k<4; k++) th[k].join();


	for (k=4;k<32;k+=8)
	{
		th[k] = std::thread(partialButterfly32threadZeroB, EEO, dst,  k, line, add, shift);
		//		dst[ k*line ] = (g_aiT32[TRANSFORM_FORWARD][k][0]*EEO[0] + g_aiT32[TRANSFORM_FORWARD][k][1]*EEO[1] +
		//				g_aiT32[TRANSFORM_FORWARD][k][2]*EEO[2] + g_aiT32[TRANSFORM_FORWARD][k][3]*EEO[3] + add)>>shift;
	}

	for (k=4;k<32;k+=8) th[k].join();

	for (k=2;k<32;k+=4)
	{
		th[k] = std::thread(partialButterfly32threadZeroC, EO, dst,  k, line, add, shift);
		//		dst[ k*line ] = (g_aiT32[TRANSFORM_FORWARD][k][0]*EO[0] + g_aiT32[TRANSFORM_FORWARD][k][1]*EO[1] +
		//				g_aiT32[TRANSFORM_FORWARD][k][2]*EO[2] + g_aiT32[TRANSFORM_FORWARD][k][3]*EO[3] +
		//				g_aiT32[TRANSFORM_FORWARD][k][4]*EO[4] + g_aiT32[TRANSFORM_FORWARD][k][5]*EO[5] +
		//				g_aiT32[TRANSFORM_FORWARD][k][6]*EO[6] + g_aiT32[TRANSFORM_FORWARD][k][7]*EO[7] + add)>>shift;
	}

	for (k=2;k<32;k+=4) th[k].join();

	for (k=1;k<32;k+=2)
	{
		th[k] = std::thread(partialButterfly32threadZeroD, O, dst,  k, line, add, shift);
		//		dst[ k*line ] = (g_aiT32[TRANSFORM_FORWARD][k][ 0]*O[ 0] + g_aiT32[TRANSFORM_FORWARD][k][ 1]*O[ 1] +
		//				g_aiT32[TRANSFORM_FORWARD][k][ 2]*O[ 2] + g_aiT32[TRANSFORM_FORWARD][k][ 3]*O[ 3] +
		//				g_aiT32[TRANSFORM_FORWARD][k][ 4]*O[ 4] + g_aiT32[TRANSFORM_FORWARD][k][ 5]*O[ 5] +
		//				g_aiT32[TRANSFORM_FORWARD][k][ 6]*O[ 6] + g_aiT32[TRANSFORM_FORWARD][k][ 7]*O[ 7] +
		//				g_aiT32[TRANSFORM_FORWARD][k][ 8]*O[ 8] + g_aiT32[TRANSFORM_FORWARD][k][ 9]*O[ 9] +
		//				g_aiT32[TRANSFORM_FORWARD][k][10]*O[10] + g_aiT32[TRANSFORM_FORWARD][k][11]*O[11] +
		//				g_aiT32[TRANSFORM_FORWARD][k][12]*O[12] + g_aiT32[TRANSFORM_FORWARD][k][13]*O[13] +
		//				g_aiT32[TRANSFORM_FORWARD][k][14]*O[14] + g_aiT32[TRANSFORM_FORWARD][k][15]*O[15] + add)>>shift;
	}
	for (k=1;k<32;k+=2) th[k].join();
}

/** 32x32 forward transform implemented using partial butterfly structure (1D)
 *  \param src   input data (residual)
 *  \param dst   output data (transform coefficients)
 *  \param shift specifies right shift after 1D transform
 *  \param line
 */
Void partialButterfly32(TCoeff *src, TCoeff *dst, Int shift, Int line)
{
	Int j;
	std::thread th[32];
	//	TCoeff E[16],O[16];
	//	TCoeff EE[8],EO[8];
	//	TCoeff EEE[4],EEO[4];
	//	TCoeff EEEE[2],EEEO[2];
	TCoeff add = (shift > 0) ? (1<<(shift-1)) : 0;

	for (j=0; j<line; j++)
	{
		th[j] = std::thread(partialButterfly32threadZero, src, dst, shift, line, add);
		//		/* E and O*/
		//		for (k=0;k<16;k++)
		//		{
		//			E[k] = src[k] + src[31-k];
		//			O[k] = src[k] - src[31-k];
		//		}
		//		/* EE and EO */
		//		for (k=0;k<8;k++)
		//		{
		//			EE[k] = E[k] + E[15-k];
		//			EO[k] = E[k] - E[15-k];
		//		}
		//		/* EEE and EEO */
		//		for (k=0;k<4;k++)
		//		{
		//			EEE[k] = EE[k] + EE[7-k];
		//			EEO[k] = EE[k] - EE[7-k];
		//		}
		//		/* EEEE and EEEO */
		//		EEEE[0] = EEE[0] + EEE[3];
		//		EEEO[0] = EEE[0] - EEE[3];
		//		EEEE[1] = EEE[1] + EEE[2];
		//		EEEO[1] = EEE[1] - EEE[2];
		//
		//		dst[ 0       ] = (g_aiT32[TRANSFORM_FORWARD][ 0][0]*EEEE[0] + g_aiT32[TRANSFORM_FORWARD][ 0][1]*EEEE[1] + add)>>shift;
		//		dst[ 16*line ] = (g_aiT32[TRANSFORM_FORWARD][16][0]*EEEE[0] + g_aiT32[TRANSFORM_FORWARD][16][1]*EEEE[1] + add)>>shift;
		//		dst[ 8*line  ] = (g_aiT32[TRANSFORM_FORWARD][ 8][0]*EEEO[0] + g_aiT32[TRANSFORM_FORWARD][ 8][1]*EEEO[1] + add)>>shift;
		//		dst[ 24*line ] = (g_aiT32[TRANSFORM_FORWARD][24][0]*EEEO[0] + g_aiT32[TRANSFORM_FORWARD][24][1]*EEEO[1] + add)>>shift;
		//		for (k=4;k<32;k+=8)
		//		{
		//			dst[ k*line ] = (g_aiT32[TRANSFORM_FORWARD][k][0]*EEO[0] + g_aiT32[TRANSFORM_FORWARD][k][1]*EEO[1] +
		//					g_aiT32[TRANSFORM_FORWARD][k][2]*EEO[2] + g_aiT32[TRANSFORM_FORWARD][k][3]*EEO[3] + add)>>shift;
		//		}
		//		for (k=2;k<32;k+=4)
		//		{
		//			dst[ k*line ] = (g_aiT32[TRANSFORM_FORWARD][k][0]*EO[0] + g_aiT32[TRANSFORM_FORWARD][k][1]*EO[1] +
		//					g_aiT32[TRANSFORM_FORWARD][k][2]*EO[2] + g_aiT32[TRANSFORM_FORWARD][k][3]*EO[3] +
		//					g_aiT32[TRANSFORM_FORWARD][k][4]*EO[4] + g_aiT32[TRANSFORM_FORWARD][k][5]*EO[5] +
		//					g_aiT32[TRANSFORM_FORWARD][k][6]*EO[6] + g_aiT32[TRANSFORM_FORWARD][k][7]*EO[7] + add)>>shift;
		//		}
		//		for (k=1;k<32;k+=2)
		//		{
		//			dst[ k*line ] = (g_aiT32[TRANSFORM_FORWARD][k][ 0]*O[ 0] + g_aiT32[TRANSFORM_FORWARD][k][ 1]*O[ 1] +
		//					g_aiT32[TRANSFORM_FORWARD][k][ 2]*O[ 2] + g_aiT32[TRANSFORM_FORWARD][k][ 3]*O[ 3] +
		//					g_aiT32[TRANSFORM_FORWARD][k][ 4]*O[ 4] + g_aiT32[TRANSFORM_FORWARD][k][ 5]*O[ 5] +
		//					g_aiT32[TRANSFORM_FORWARD][k][ 6]*O[ 6] + g_aiT32[TRANSFORM_FORWARD][k][ 7]*O[ 7] +
		//					g_aiT32[TRANSFORM_FORWARD][k][ 8]*O[ 8] + g_aiT32[TRANSFORM_FORWARD][k][ 9]*O[ 9] +
		//					g_aiT32[TRANSFORM_FORWARD][k][10]*O[10] + g_aiT32[TRANSFORM_FORWARD][k][11]*O[11] +
		//					g_aiT32[TRANSFORM_FORWARD][k][12]*O[12] + g_aiT32[TRANSFORM_FORWARD][k][13]*O[13] +
		//					g_aiT32[TRANSFORM_FORWARD][k][14]*O[14] + g_aiT32[TRANSFORM_FORWARD][k][15]*O[15] + add)>>shift;
		//		}

		src += 32;
		dst ++;
	}
	for (j = 0; j<line; j++) th[j].join();
}



Void partialButterflyInverse32threadZeroA(\
		TCoeff* 		src, \
		Int 			k, \
		Int 			line, \
		TCoeff* 		dst)
{
	*(dst + k) = g_aiT32[TRANSFORM_INVERSE][ 1][k]*src[ line    ] + g_aiT32[TRANSFORM_INVERSE][ 3][k]*src[ 3*line  ] +
			g_aiT32[TRANSFORM_INVERSE][ 5][k]*src[ 5*line  ] + g_aiT32[TRANSFORM_INVERSE][ 7][k]*src[ 7*line  ] +
			g_aiT32[TRANSFORM_INVERSE][ 9][k]*src[ 9*line  ] + g_aiT32[TRANSFORM_INVERSE][11][k]*src[ 11*line ] +
			g_aiT32[TRANSFORM_INVERSE][13][k]*src[ 13*line ] + g_aiT32[TRANSFORM_INVERSE][15][k]*src[ 15*line ] +
			g_aiT32[TRANSFORM_INVERSE][17][k]*src[ 17*line ] + g_aiT32[TRANSFORM_INVERSE][19][k]*src[ 19*line ] +
			g_aiT32[TRANSFORM_INVERSE][21][k]*src[ 21*line ] + g_aiT32[TRANSFORM_INVERSE][23][k]*src[ 23*line ] +
			g_aiT32[TRANSFORM_INVERSE][25][k]*src[ 25*line ] + g_aiT32[TRANSFORM_INVERSE][27][k]*src[ 27*line ] +
			g_aiT32[TRANSFORM_INVERSE][29][k]*src[ 29*line ] + g_aiT32[TRANSFORM_INVERSE][31][k]*src[ 31*line ];
}

Void partialButterflyInverse32threadZeroB(\
		TCoeff* 		src, \
		Int 			k, \
		Int 			line, \
		TCoeff* 		dst)
{
	*(dst + k) = g_aiT32[TRANSFORM_INVERSE][ 2][k]*src[ 2*line  ] + g_aiT32[TRANSFORM_INVERSE][ 6][k]*src[ 6*line  ] +
			g_aiT32[TRANSFORM_INVERSE][10][k]*src[ 10*line ] + g_aiT32[TRANSFORM_INVERSE][14][k]*src[ 14*line ] +
			g_aiT32[TRANSFORM_INVERSE][18][k]*src[ 18*line ] + g_aiT32[TRANSFORM_INVERSE][22][k]*src[ 22*line ] +
			g_aiT32[TRANSFORM_INVERSE][26][k]*src[ 26*line ] + g_aiT32[TRANSFORM_INVERSE][30][k]*src[ 30*line ];

	//	EO[k] = g_aiT32[TRANSFORM_INVERSE][ 2][k]*src[ 2*line  ] + g_aiT32[TRANSFORM_INVERSE][ 6][k]*src[ 6*line  ] +
	//					g_aiT32[TRANSFORM_INVERSE][10][k]*src[ 10*line ] + g_aiT32[TRANSFORM_INVERSE][14][k]*src[ 14*line ] +
	//					g_aiT32[TRANSFORM_INVERSE][18][k]*src[ 18*line ] + g_aiT32[TRANSFORM_INVERSE][22][k]*src[ 22*line ] +
	//					g_aiT32[TRANSFORM_INVERSE][26][k]*src[ 26*line ] + g_aiT32[TRANSFORM_INVERSE][30][k]*src[ 30*line ];
}

Void partialButterflyInverse32threadZeroC(\
		TCoeff* 		src, \
		Int 			k, \
		Int 			line, \
		TCoeff* 		dst)
{
	*(dst + k) = g_aiT32[TRANSFORM_INVERSE][ 4][k]*src[  4*line ] + g_aiT32[TRANSFORM_INVERSE][12][k]*src[ 12*line ] +
			g_aiT32[TRANSFORM_INVERSE][20][k]*src[ 20*line ] + g_aiT32[TRANSFORM_INVERSE][28][k]*src[ 28*line ];

	//	EEO[k] = g_aiT32[TRANSFORM_INVERSE][ 4][k]*src[  4*line ] + g_aiT32[TRANSFORM_INVERSE][12][k]*src[ 12*line ] +
	//					g_aiT32[TRANSFORM_INVERSE][20][k]*src[ 20*line ] + g_aiT32[TRANSFORM_INVERSE][28][k]*src[ 28*line ];
}

Void partialButterflyInverse32threadZeroD(\
		TCoeff* 	src, \
		Int 		ai, \
		Int 		aj, \
		Int 		bi, \
		Int 		bj, \
		Int 		line, \
		TCoeff* 	dst)
{
	*dst = g_aiT32[TRANSFORM_INVERSE][ai][aj]*src[ai*line ] + g_aiT32[TRANSFORM_INVERSE][bi][bj]*src[bi*line ];
	//	EEEO[0] = g_aiT32[TRANSFORM_INVERSE][8][0]*src[ 8*line ] + g_aiT32[TRANSFORM_INVERSE][24][0]*src[ 24*line ];
}


Void partialButterflyInverse32threadZero(\
		TCoeff* 		src, \
		TCoeff* 		dst, \
		Int 			shift, \
		Int 			line, \
		const TCoeff 	outputMinimum, \
		const TCoeff 	outputMaximum, \
		TCoeff 			add)
{
	Int k;
	std::thread th[32];
	TCoeff E[16],O[16];
	TCoeff EE[8],EO[8];
	TCoeff EEE[4],EEO[4];
	TCoeff EEEE[2],EEEO[2];

	for (k=0;k<16;k++)
	{
		th[k] = std::thread(partialButterflyInverse32threadZeroA, src, k, line, O);
		//		O[k] = g_aiT32[TRANSFORM_INVERSE][ 1][k]*src[ line    ] + g_aiT32[TRANSFORM_INVERSE][ 3][k]*src[ 3*line  ] +
		//				g_aiT32[TRANSFORM_INVERSE][ 5][k]*src[ 5*line  ] + g_aiT32[TRANSFORM_INVERSE][ 7][k]*src[ 7*line  ] +
		//				g_aiT32[TRANSFORM_INVERSE][ 9][k]*src[ 9*line  ] + g_aiT32[TRANSFORM_INVERSE][11][k]*src[ 11*line ] +
		//				g_aiT32[TRANSFORM_INVERSE][13][k]*src[ 13*line ] + g_aiT32[TRANSFORM_INVERSE][15][k]*src[ 15*line ] +
		//				g_aiT32[TRANSFORM_INVERSE][17][k]*src[ 17*line ] + g_aiT32[TRANSFORM_INVERSE][19][k]*src[ 19*line ] +
		//				g_aiT32[TRANSFORM_INVERSE][21][k]*src[ 21*line ] + g_aiT32[TRANSFORM_INVERSE][23][k]*src[ 23*line ] +
		//				g_aiT32[TRANSFORM_INVERSE][25][k]*src[ 25*line ] + g_aiT32[TRANSFORM_INVERSE][27][k]*src[ 27*line ] +
		//				g_aiT32[TRANSFORM_INVERSE][29][k]*src[ 29*line ] + g_aiT32[TRANSFORM_INVERSE][31][k]*src[ 31*line ];
	}

	for (k=0;k<16;k++) th[k].join();

	for (k=0;k<8;k++)
	{
		th[k] = std::thread(partialButterflyInverse32threadZeroB, src, k, line, EO);
		//		EO[k] = g_aiT32[TRANSFORM_INVERSE][ 2][k]*src[ 2*line  ] + g_aiT32[TRANSFORM_INVERSE][ 6][k]*src[ 6*line  ] +
		//				g_aiT32[TRANSFORM_INVERSE][10][k]*src[ 10*line ] + g_aiT32[TRANSFORM_INVERSE][14][k]*src[ 14*line ] +
		//				g_aiT32[TRANSFORM_INVERSE][18][k]*src[ 18*line ] + g_aiT32[TRANSFORM_INVERSE][22][k]*src[ 22*line ] +
		//				g_aiT32[TRANSFORM_INVERSE][26][k]*src[ 26*line ] + g_aiT32[TRANSFORM_INVERSE][30][k]*src[ 30*line ];
	}

	for (k=0;k<8;k++) th[k].join();

	for (k=0;k<4;k++)
	{
		th[k] = std::thread(partialButterflyInverse32threadZeroC, src, k, line, EEO);
		//		EEO[k] = g_aiT32[TRANSFORM_INVERSE][ 4][k]*src[  4*line ] + g_aiT32[TRANSFORM_INVERSE][12][k]*src[ 12*line ] +
		//				g_aiT32[TRANSFORM_INVERSE][20][k]*src[ 20*line ] + g_aiT32[TRANSFORM_INVERSE][28][k]*src[ 28*line ];
	}

	for (k=0;k<4;k++) th[k].join();

	th[0] = std::thread(partialButterflyInverse32threadZeroD, src, 8, 0, 24, 0, line, EEEO);
	th[1] = std::thread(partialButterflyInverse32threadZeroD, src, 0, 0, 16, 0, line, EEEE);
	th[2] = std::thread(partialButterflyInverse32threadZeroD, src, 8, 1, 24, 1, line, EEEO+1);
	th[3] = std::thread(partialButterflyInverse32threadZeroD, src, 0, 1, 16, 1, line, EEEE+1);

	//	EEEO[0] = g_aiT32[TRANSFORM_INVERSE][8][0]*src[ 8*line ] + g_aiT32[TRANSFORM_INVERSE][24][0]*src[ 24*line ];
	//	EEEO[1] = g_aiT32[TRANSFORM_INVERSE][8][1]*src[ 8*line ] + g_aiT32[TRANSFORM_INVERSE][24][1]*src[ 24*line ];
	//	EEEE[0] = g_aiT32[TRANSFORM_INVERSE][0][0]*src[ 0      ] + g_aiT32[TRANSFORM_INVERSE][16][0]*src[ 16*line ];
	//	EEEE[1] = g_aiT32[TRANSFORM_INVERSE][0][1]*src[ 0      ] + g_aiT32[TRANSFORM_INVERSE][16][1]*src[ 16*line ];

	for (k=0;k<4;k++) th[k].join();

	/* Combining even and odd terms at each hierarchy levels to calculate the final spatial domain vector */
	th[0] = std::thread(partialButterfly4ThreadOneP, EEEE, 	 EEEO,   EEE);
	th[1] = std::thread(partialButterfly4ThreadOneN, EEEE, 	 EEEO,   EEE+3);
	th[2] = std::thread(partialButterfly4ThreadOneP, EEEE+1, EEEO+1, EEE+1);
	th[3] = std::thread(partialButterfly4ThreadOneN, EEEE+1, EEEO+1, EEE+2);

	//	EEE[0] = EEEE[0] + EEEO[0];
	//	EEE[3] = EEEE[0] - EEEO[0];
	//	EEE[1] = EEEE[1] + EEEO[1];
	//	EEE[2] = EEEE[1] - EEEO[1];

	for (k=0;k<4;k++) th[k].join();

	for (k=0;k<4;k++)
	{
		th[k	] = std::thread(partialButterfly4ThreadOneP, EEE+k, 	EEO+k,		EE+k);
		th[k+4	] = std::thread(partialButterfly4ThreadOneN, EEE+3-k, 	EEO+3-k, 	EE+k+4);

		//		EE[k] = EEE[k] + EEO[k];
		//		EE[k+4] = EEE[3-k] - EEO[3-k];
	}

	for (k=0;k<8;k++) th[k].join();

	for (k=0;k<8;k++)
	{
		th[k	] = std::thread(partialButterfly4ThreadOneP, EE+k, 		EO+k,	E+k);
		th[k+8	] = std::thread(partialButterfly4ThreadOneN, EE+7-k, 	EO+7-k, E+k+8);

		//		E[k] = EE[k] + EO[k];
		//		E[k+8] = EE[7-k] - EO[7-k];
	}

	for (k=0;k<16;k++) th[k].join();

	for (k=0;k<16;k++)
	{
		th[k	] = std::thread(partialButterflyInverse4ThreadTwo, E[k], 	 O[k], 		dst+k, 		shift, outputMinimum, outputMaximum, add);
		th[k+16	] = std::thread(partialButterflyInverse4ThreadTwo, E[15-k], -O[15-k], 	dst+k+16, 	shift, outputMinimum, outputMaximum, add);
		//		dst[k]    = Clip3( outputMinimum, outputMaximum, (E[k] + O[k] + add)>>shift );
		//		dst[k+16] = Clip3( outputMinimum, outputMaximum, (E[15-k] - O[15-k] + add)>>shift );
	}
	for (k=0;k<32;k++) th[k].join();
}


/** 32x32 inverse transform implemented using partial butterfly structure (1D)
 *  \param src   input data (transform coefficients)
 *  \param dst   output data (residual)
 *  \param shift specifies right shift after 1D transform
 *  \param line
 *  \param outputMinimum  minimum for clipping
 *  \param outputMaximum  maximum for clipping
 */
Void partialButterflyInverse32(\
		TCoeff* 		src, \
		TCoeff* 		dst, \
		Int 			shift, \
		Int 			line, \
		const TCoeff 	outputMinimum, \
		const TCoeff 	outputMaximum)
{
	Int j;
	std::thread th[32];
	//	TCoeff E[16],O[16];
	//	TCoeff EE[8],EO[8];
	//	TCoeff EEE[4],EEO[4];
	//	TCoeff EEEE[2],EEEO[2];
	TCoeff add = (shift > 0) ? (1<<(shift-1)) : 0;

	for (j=0; j<line; j++)
	{
		th[j] = std::thread(partialButterflyInverse32threadZero, src, dst, shift, line, outputMinimum, outputMaximum, add);

		/* Utilizing symmetry properties to the maximum to minimize the number of multiplications */
		//		for (k=0;k<16;k++)
		//		{
		//			O[k] = g_aiT32[TRANSFORM_INVERSE][ 1][k]*src[ line    ] + g_aiT32[TRANSFORM_INVERSE][ 3][k]*src[ 3*line  ] +
		//					g_aiT32[TRANSFORM_INVERSE][ 5][k]*src[ 5*line  ] + g_aiT32[TRANSFORM_INVERSE][ 7][k]*src[ 7*line  ] +
		//					g_aiT32[TRANSFORM_INVERSE][ 9][k]*src[ 9*line  ] + g_aiT32[TRANSFORM_INVERSE][11][k]*src[ 11*line ] +
		//					g_aiT32[TRANSFORM_INVERSE][13][k]*src[ 13*line ] + g_aiT32[TRANSFORM_INVERSE][15][k]*src[ 15*line ] +
		//					g_aiT32[TRANSFORM_INVERSE][17][k]*src[ 17*line ] + g_aiT32[TRANSFORM_INVERSE][19][k]*src[ 19*line ] +
		//					g_aiT32[TRANSFORM_INVERSE][21][k]*src[ 21*line ] + g_aiT32[TRANSFORM_INVERSE][23][k]*src[ 23*line ] +
		//					g_aiT32[TRANSFORM_INVERSE][25][k]*src[ 25*line ] + g_aiT32[TRANSFORM_INVERSE][27][k]*src[ 27*line ] +
		//					g_aiT32[TRANSFORM_INVERSE][29][k]*src[ 29*line ] + g_aiT32[TRANSFORM_INVERSE][31][k]*src[ 31*line ];
		//		}
		//		for (k=0;k<8;k++)
		//		{
		//			EO[k] = g_aiT32[TRANSFORM_INVERSE][ 2][k]*src[ 2*line  ] + g_aiT32[TRANSFORM_INVERSE][ 6][k]*src[ 6*line  ] +
		//					g_aiT32[TRANSFORM_INVERSE][10][k]*src[ 10*line ] + g_aiT32[TRANSFORM_INVERSE][14][k]*src[ 14*line ] +
		//					g_aiT32[TRANSFORM_INVERSE][18][k]*src[ 18*line ] + g_aiT32[TRANSFORM_INVERSE][22][k]*src[ 22*line ] +
		//					g_aiT32[TRANSFORM_INVERSE][26][k]*src[ 26*line ] + g_aiT32[TRANSFORM_INVERSE][30][k]*src[ 30*line ];
		//		}
		//		for (k=0;k<4;k++)
		//		{
		//			EEO[k] = g_aiT32[TRANSFORM_INVERSE][ 4][k]*src[  4*line ] + g_aiT32[TRANSFORM_INVERSE][12][k]*src[ 12*line ] +
		//					g_aiT32[TRANSFORM_INVERSE][20][k]*src[ 20*line ] + g_aiT32[TRANSFORM_INVERSE][28][k]*src[ 28*line ];
		//		}
		//		EEEO[0] = g_aiT32[TRANSFORM_INVERSE][8][0]*src[ 8*line ] + g_aiT32[TRANSFORM_INVERSE][24][0]*src[ 24*line ];
		//		EEEO[1] = g_aiT32[TRANSFORM_INVERSE][8][1]*src[ 8*line ] + g_aiT32[TRANSFORM_INVERSE][24][1]*src[ 24*line ];
		//		EEEE[0] = g_aiT32[TRANSFORM_INVERSE][0][0]*src[ 0      ] + g_aiT32[TRANSFORM_INVERSE][16][0]*src[ 16*line ];
		//		EEEE[1] = g_aiT32[TRANSFORM_INVERSE][0][1]*src[ 0      ] + g_aiT32[TRANSFORM_INVERSE][16][1]*src[ 16*line ];
		//
		//		/* Combining even and odd terms at each hierarchy levels to calculate the final spatial domain vector */
		//		EEE[0] = EEEE[0] + EEEO[0];
		//		EEE[3] = EEEE[0] - EEEO[0];
		//		EEE[1] = EEEE[1] + EEEO[1];
		//		EEE[2] = EEEE[1] - EEEO[1];
		//		for (k=0;k<4;k++)
		//		{
		//			EE[k] = EEE[k] + EEO[k];
		//			EE[k+4] = EEE[3-k] - EEO[3-k];
		//		}
		//		for (k=0;k<8;k++)
		//		{
		//			E[k] = EE[k] + EO[k];
		//			E[k+8] = EE[7-k] - EO[7-k];
		//		}
		//		for (k=0;k<16;k++)
		//		{
		//			dst[k]    = Clip3( outputMinimum, outputMaximum, (E[k] + O[k] + add)>>shift );
		//			dst[k+16] = Clip3( outputMinimum, outputMaximum, (E[15-k] - O[15-k] + add)>>shift );
		//		}
		src ++;
		dst += 32;
	}
	for (j = 0; j<line; j++) th[j].join();
}

/*
SChar		g_aucConvertToBit[ MAX_CU_SIZE+1 ] =
		{\
				-1, -1, -1, -1,  0, -1, -1, -1, \
				 1, -1, -1, -1, -1, -1, -1, -1, \
				 2, -1, -1, -1, -1, -1, -1, -1, \
				-1, -1, -1, -1, -1, -1, -1, -1, \
				 3, -1, -1, -1, -1, -1, -1, -1, \
				-1, -1, -1, -1, -1, -1, -1, -1, \
				-1, -1, -1, -1, -1, -1, -1, -1, \
				-1, -1, -1, -1, -1, -1, -1, -1, \
				 4};   // from width to log2(width)-2
 */

/** MxN forward transform (2D)
 *  \param bitDepth              [in]  bit depth
 *  \param block                 [in]  residual block
 *  \param coeff                 [out] transform coefficients
 *  \param iWidth                [in]  width of transform
 *  \param iHeight               [in]  height of transform
 *  \param useDST                [in]
 *  \param maxLog2TrDynamicRange [in]

 */
Void xTrMxN(Int bitDepth, TCoeff *block, TCoeff *coeff, Int iWidth, Int iHeight, Bool useDST, const Int maxLog2TrDynamicRange)
{
	const Int TRANSFORM_MATRIX_SHIFT = g_transformMatrixShift[TRANSFORM_FORWARD];
//	DCTHEVCdct cDCT;
	const SChar		g_aucConvertToBit[ MAX_CU_SIZE+1 ] =
	{\
			-1, -1, -1, -1,  0, -1, -1, -1, \
			1, -1, -1, -1, -1, -1, -1, -1, \
			2, -1, -1, -1, -1, -1, -1, -1, \
			-1, -1, -1, -1, -1, -1, -1, -1, \
			3, -1, -1, -1, -1, -1, -1, -1, \
			-1, -1, -1, -1, -1, -1, -1, -1, \
			-1, -1, -1, -1, -1, -1, -1, -1, \
			-1, -1, -1, -1, -1, -1, -1, -1, \
			4};   // from width to log2(width)-2
//	const Int shift_1st = ((cDCT.g_aucConvertToBit[iWidth] + 2) +  bitDepth + TRANSFORM_MATRIX_SHIFT) - maxLog2TrDynamicRange;
//		const Int shift_2nd = (cDCT.g_aucConvertToBit[iHeight] + 2) + TRANSFORM_MATRIX_SHIFT;
		const Int shift_1st = ((g_aucConvertToBit[iWidth] + 2) +  bitDepth + TRANSFORM_MATRIX_SHIFT) - maxLog2TrDynamicRange;
			const Int shift_2nd = (g_aucConvertToBit[iHeight] + 2) + TRANSFORM_MATRIX_SHIFT;

	assert(shift_1st >= 0);
	assert(shift_2nd >= 0);

	TCoeff tmp[ MAX_TU_SIZE * MAX_TU_SIZE ];

	std::thread th[2];

	switch (iWidth)
	{
	case 4:		th[0] = std::thread(partialButterfly4, block, tmp, shift_1st, iHeight ); 	break;
	case 8:     th[0] = std::thread(partialButterfly8, block, tmp, shift_1st, iHeight );  	break;
	case 16:    th[0] = std::thread(partialButterfly16, block, tmp, shift_1st, iHeight );  	break;
	case 32:    th[0] = std::thread(partialButterfly32, block, tmp, shift_1st, iHeight );  	break;
	default:
		assert(0); exit (1); break;
	}
	th[0].join();
	switch (iHeight)
	{
	case 4: 	th[1] = std::thread(partialButterfly4, tmp, coeff, shift_2nd, iWidth ); 	break;
	case 8:     th[1] = std::thread(partialButterfly8, tmp, coeff, shift_2nd, iWidth );    	break;
	case 16:    th[1] = std::thread(partialButterfly16, tmp, coeff, shift_2nd, iWidth );    break;
	case 32:    th[1] = std::thread(partialButterfly32, tmp, coeff, shift_2nd, iWidth );    break;
	default:
		assert(0); exit (1); break;
	}
	th[1].join();
}


/** MxN inverse transform (2D)
 *  \param bitDepth              [in]  bit depth
 *  \param coeff                 [in]  transform coefficients
 *  \param block                 [out] residual block
 *  \param iWidth                [in]  width of transform
 *  \param iHeight               [in]  height of transform
 *  \param useDST                [in]
 *  \param maxLog2TrDynamicRange [in]
 */
Void xITrMxN(Int bitDepth, TCoeff *coeff, TCoeff *block, Int iWidth, Int iHeight, Bool useDST, const Int maxLog2TrDynamicRange)
{
	const Int TRANSFORM_MATRIX_SHIFT = g_transformMatrixShift[TRANSFORM_INVERSE];

	Int shift_1st = TRANSFORM_MATRIX_SHIFT + 1; //1 has been added to shift_1st at the expense of shift_2nd
	Int shift_2nd = (TRANSFORM_MATRIX_SHIFT + maxLog2TrDynamicRange - 1) - bitDepth;
	const TCoeff clipMinimum = -(1 << maxLog2TrDynamicRange);
	const TCoeff clipMaximum =  (1 << maxLog2TrDynamicRange) - 1;

	assert(shift_1st >= 0);
	assert(shift_2nd >= 0);

	TCoeff tmp[MAX_TU_SIZE * MAX_TU_SIZE];
	std::thread th;

	switch (iHeight)
	{
	case  4: th = std::thread(partialButterflyInverse4, coeff, tmp, shift_1st, iWidth, clipMinimum, clipMaximum); break;
	case  8: th = std::thread(partialButterflyInverse8, coeff, tmp, shift_1st, iWidth, clipMinimum, clipMaximum); break;
	case 16: th = std::thread(partialButterflyInverse16, coeff, tmp, shift_1st, iWidth, clipMinimum, clipMaximum); break;
	case 32: th = std::thread(partialButterflyInverse32, coeff, tmp, shift_1st, iWidth, clipMinimum, clipMaximum); break;

	default:
		assert(0); exit (1); break;
	}
	th.join();

	switch (iWidth)
	{
	// Clipping here is not in the standard, but is used to protect the "Pel" data type into which the inverse-transformed samples will be copied
	case  4: th = std::thread(partialButterflyInverse4, tmp, block, shift_2nd, iHeight, std::numeric_limits<Pel>::min(), std::numeric_limits<Pel>::max()); break;
	case  8: th = std::thread(partialButterflyInverse8, tmp, block, shift_2nd, iHeight, std::numeric_limits<Pel>::min(), std::numeric_limits<Pel>::max()); break;
	case 16: th = std::thread(partialButterflyInverse16, tmp, block, shift_2nd, iHeight, std::numeric_limits<Pel>::min(), std::numeric_limits<Pel>::max()); break;
	case 32: th = std::thread(partialButterflyInverse32, tmp, block, shift_2nd, iHeight, std::numeric_limits<Pel>::min(), std::numeric_limits<Pel>::max()); break;

	default:
		assert(0); exit (1); break;
	}
	th.join();
}

//DCTHEVCdct::DCTHEVCdct() {
//	initROM();
//}
