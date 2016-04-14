/*
 * DCTHEVCdct.cu
 *
 *  Created on: 5 Mar 2016
 *      Author: vegan
 */

#include <stdlib.h>
#include <algorithm>
#include <limits>
#include <assert.h>

#include "DCTHEVCdct.hpp"
#include "DCTHEVC.hpp"

#include <device_functions.hpp> // nv min, max

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
	/*
	Mostly HEVC code
	*/
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
	/*
	Mostly HEVC code
	*/
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

/*
Threaded code
*/
__device__ Void partialButterfly4ThreadTwo(\
		TCoeff*	src, \
		TCoeff*	dst, \
		Int 	shift, \
		Int 	line, \
		TCoeff 	add, \
		Int 	k, \
		TMatrixCoeff *g_aiT_GPU)
{
	TCoeff a = *src;
	TCoeff b = *(src+1);
	*dst = (*(g_aiT_GPU+4*k)*a + *(g_aiT_GPU+4*k+1)*b + add)>>shift;
}

__device__ Void partialButterfly4ThreadOneP(\
		TCoeff*	src1, \
		TCoeff*	src2, \
		TCoeff*	dst)
{
	*dst = *src1 + *src2;
}

__device__ Void partialButterfly4ThreadOneN(\
		TCoeff*	src1, \
		TCoeff*	src2, \
		TCoeff*	dst)
{
	*dst = *src1 - *src2;
}

__device__ Void partialButterfly4ThreadZero(\
		TCoeff*			src, \
		TCoeff*			dst, \
		Int 			shift, \
		Int 			line, \
		const TCoeff 	add, \
		TMatrixCoeff *g_aiT_GPU)
{
	TCoeff E[2],O[2];

	partialButterfly4ThreadOneP(src, 	src+3, E);
	partialButterfly4ThreadOneN(src, 	src+3, O);
	partialButterfly4ThreadOneP(src+1, 	src+2, E+1);
	partialButterfly4ThreadOneN(src+1, 	src+2, O+1);

	partialButterfly4ThreadTwo(E, dst, 		shift, line, add, 0, g_aiT_GPU);
	partialButterfly4ThreadTwo(O, dst + 1*line, 	shift, line, add, 1, g_aiT_GPU);
	partialButterfly4ThreadTwo(E, dst + 2*line,	shift, line, add, 2, g_aiT_GPU);
	partialButterfly4ThreadTwo(O, dst + 3*line, 	shift, line, add, 3, g_aiT_GPU);
}

/** 4x4 forward transform implemented using partial butterfly structure (1D)
 *  \param src   input data (residual)
 *  \param dst   output data (transform coefficients)
 *  \param shift specifies right shift after 1D transform
 *  \param line
 */
__global__ Void partialButterfly4(\
		TCoeff*	src, \
		TCoeff*	dst, \
		Int 	shift, \
		Int 	line, \
		TMatrixCoeff *g_aiT_GPU)
{
	__shared__ TCoeff add;
	Int j = blockIdx.x * blockDim.x + threadIdx.x;
	__syncthreads();

	if(j == 0) add = (shift > 0) ? (1<<(shift-1)) : 0;
	__syncthreads();

	if(j < 4)
	{
		partialButterfly4ThreadZero(src+4*j, dst+j, shift, line, add, g_aiT_GPU);
	}
}

__device__ Void Clip3C (\
		TCoeff*			dst, \
		const TCoeff 	minVal, \
		const TCoeff 	maxVal, \
		const TCoeff 	a)
{
	*dst = min(max(minVal, a), maxVal);
}

__device__ Void partialButterflyInverse4ThreadTwo(\
		TCoeff 			E, \
		TCoeff			O, \
		TCoeff*			dst, \
		Int 			shift, \
		const TCoeff 	outputMinimum, \
		const TCoeff 	outputMaximum, \
		TCoeff 			add)
{
	Clip3C(dst, outputMinimum, outputMaximum, (E + O + add)>>shift );
	//*dst = Clip3( outputMinimum, outputMaximum, (E + O + add)>>shift );
}

__device__ Void partialButterflyInverse4ThreadEO(\
		TCoeff*	src1, \
		TCoeff*	src2, \
		TCoeff*	dst, \
		Int 	indA, \
		Int 	indB, \
		Int 	indx, \
		TMatrixCoeff *g_aiT_GPU)
{
	*dst = *(g_aiT_GPU+4*indA+indx)*(*src1) + *(g_aiT_GPU+4*indB+indx)*(*src2);
}


__device__ Void partialButterflyInverse4ThreadZero(\
		TCoeff*			src, \
		TCoeff*			dst, \
		Int 			shift, \
		Int 			line, \
		const TCoeff 	outputMinimum, \
		const TCoeff 	outputMaximum, \
		TCoeff 			add, \
		TMatrixCoeff *g_aiT_GPU)
{
	TCoeff E[2],O[2];

	partialButterflyInverse4ThreadEO(src+line, 	src+3*line, O, 		1, 3, 0, g_aiT_GPU);
	partialButterflyInverse4ThreadEO(src+line, 	src+3*line, O+1, 	1, 3, 1, g_aiT_GPU);
	partialButterflyInverse4ThreadEO(src, 		src+2*line, E, 		0, 2, 0, g_aiT_GPU);
	partialButterflyInverse4ThreadEO(src, 		src+2*line, E+1, 	0, 2, 1, g_aiT_GPU);

	partialButterflyInverse4ThreadTwo(E[0],  O[0], dst, 	shift, outputMinimum, outputMaximum, add);
	partialButterflyInverse4ThreadTwo(E[1],  O[1], dst+1, 	shift, outputMinimum, outputMaximum, add);
	partialButterflyInverse4ThreadTwo(E[1], -O[1], dst+2, 	shift, outputMinimum, outputMaximum, add);
	partialButterflyInverse4ThreadTwo(E[0], -O[0], dst+3, 	shift, outputMinimum, outputMaximum, add);
}

/** 4x4 inverse transform implemented using partial butterfly structure (1D)
 *  \param src   input data (transform coefficients)
 *  \param dst   output data (residual)
 *  \param shift specifies right shift after 1D transform
 *  \param line
 *  \param outputMinimum  minimum for clipping
 *  \param outputMaximum  maximum for clipping
 */
__global__ Void partialButterflyInverse4(\
		TCoeff*			src, \
		TCoeff*			dst, \
		Int 			shift, \
		Int 			line, \
		const TCoeff 	outputMinimum, \
		const TCoeff 	outputMaximum, \
		TMatrixCoeff *g_aiT_GPU)
{
	__shared__ TCoeff add;
	Int j = blockIdx.x * blockDim.x + threadIdx.x;
	__syncthreads();

	if(j == 0) add = (shift > 0) ? (1<<(shift-1)) : 0;
	__syncthreads();

	if(j < 4)
	{
		partialButterflyInverse4ThreadZero(src+j, dst+4*j, shift, line, outputMinimum, outputMaximum, add, g_aiT_GPU);
	}
}




__device__ Void partialButterfly8ThreadOneB(\
		TCoeff*	src, \
		TCoeff*	dst, \
		Int 	shift, \
		Int 	line, \
		Int 	add, \
		Int 	indx, \
		TMatrixCoeff *g_aiT_GPU)
{
	*dst = (*(g_aiT_GPU+8*indx)*(*(src)) + *(g_aiT_GPU+8*indx+1)*(*(src+1)) + *(g_aiT_GPU+8*indx+2)*(*(src+2)) + *(g_aiT_GPU+8*indx+3)*(*(src+3)) + add)>>shift;
}

__device__ Void partialButterfly8ThreadOneA(\
		TCoeff*	src, \
		TCoeff*	dst, \
		Int 	shift, \
		Int 	line, \
		Int 	add, \
		Int 	indx, \
		TMatrixCoeff *g_aiT_GPU)
{
	*dst = (*(g_aiT_GPU+8*indx)*(*(src)) + *(g_aiT_GPU+8*indx+1)*(*(src+1)) + add)>>shift;
}

__device__ Void partialButterfly8ThreadZero(\
		TCoeff*			src, \
		TCoeff*			dst, \
		Int 			shift, \
		Int 			line, \
		const TCoeff 	add, \
		TMatrixCoeff *g_aiT_GPU)
{
	Int k;
	TCoeff E[4],O[4];
	TCoeff EE[2],EO[2];

	/* E and O*/
	for (k=0;k<4;k++)
	{
		partialButterfly4ThreadOneP(src+k, src+7-k, E + k);
		partialButterfly4ThreadOneN(src+k, src+7-k, O + k);
	}

	/* EE and EO */

	partialButterfly4ThreadOneP(E, 		E + 3, EE);
	partialButterfly4ThreadOneN(E, 		E + 3, EO);
	partialButterfly4ThreadOneP(E+1, 	E+2, EE+1);
	partialButterfly4ThreadOneN(E+1, 	E+2, EO+1);

	partialButterfly8ThreadOneA(EE, dst, 		shift, line, add, 0, g_aiT_GPU);
	partialButterfly8ThreadOneA(EE, dst+4*line, 	shift, line, add, 4, g_aiT_GPU);
	partialButterfly8ThreadOneA(EO, dst+2*line, 	shift, line, add, 2, g_aiT_GPU);
	partialButterfly8ThreadOneA(EO, dst+6*line, 	shift, line, add, 6, g_aiT_GPU);

	partialButterfly8ThreadOneB(O, dst+line, 	shift, line, add, 1, g_aiT_GPU);
	partialButterfly8ThreadOneB(O, dst+3*line, 	shift, line, add, 3, g_aiT_GPU);
	partialButterfly8ThreadOneB(O, dst+5*line, 	shift, line, add, 5, g_aiT_GPU);
	partialButterfly8ThreadOneB(O, dst+7*line, 	shift, line, add, 7, g_aiT_GPU);
}

/** 8x8 forward transform implemented using partial butterfly structure (1D)
 *  \param src   input data (residual)
 *  \param dst   output data (transform coefficients)
 *  \param shift specifies right shift after 1D transform
 *  \param line
 */
__global__ Void partialButterfly8(\
		TCoeff*	src, \
		TCoeff*	dst, \
		Int 	shift, \
		Int 	line, \
		TMatrixCoeff *g_aiT_GPU)
{
	__shared__ TCoeff add;
	Int j = blockIdx.x * blockDim.x + threadIdx.x;
	__syncthreads();

	if(j == 0) add = (shift > 0) ? (1<<(shift-1)) : 0;
	__syncthreads();

	if(j < 8)
	{
		partialButterfly8ThreadZero(src+8*j, dst+j, shift, line, add, g_aiT_GPU);
	}
}



__device__ Void partialButterflyInverse8threadZeroA(\
		TCoeff*	src, \
		Int 	line, \
		Int 	k,
		TCoeff*	O, \
		TMatrixCoeff *g_aiT_GPU)
{
	*O = 		*(g_aiT_GPU+8 +k)*(*(src+  line)) + *(g_aiT_GPU+24+k)*(*(src+3*line)) +
			*(g_aiT_GPU+40+k)*(*(src+5*line)) + *(g_aiT_GPU+56+k)*(*(src+7*line));
}

__device__ Void partialButterflyInverse8threadZeroB(\
		TCoeff*	src, \
		Int 	line, \
		Int 	ai, \
		Int 	aj, \
		Int 	bi, \
		TCoeff*	dst, \
		TMatrixCoeff *g_aiT_GPU)
{
	*(dst+aj) = *(g_aiT_GPU+8*ai+aj)*(*(src+line*ai)) + *(g_aiT_GPU+8*bi+aj)*(*(src+line*bi));
}

/*
__device__ Void partialButterflyInverse8threadOne(\
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
*/

__device__ Void partialButterflyInverse8threadZero(\
		TCoeff*			src, \
		TCoeff*			dst, \
		Int 			shift, \
		Int 			line, \
		const TCoeff 	outputMinimum, \
		const TCoeff 	outputMaximum, \
		TCoeff 			add, \
		TMatrixCoeff *g_aiT_GPU)
{
	Int k;

	TCoeff E[4],O[4];
	TCoeff EE[2],EO[2];

	/* Utilizing symmetry properties to the maximum to minimize the number of multiplications */
	for (k=0;k<4;k++)
	{
		partialButterflyInverse8threadZeroA(src, line, k, O + k, g_aiT_GPU);
	}

	partialButterflyInverse8threadZeroB(src, line, 2, 0, 6, EO, 	g_aiT_GPU);
	partialButterflyInverse8threadZeroB(src, line, 2, 1, 6, EO, 	g_aiT_GPU);
	partialButterflyInverse8threadZeroB(src, line, 0, 0, 4, EE, 	g_aiT_GPU);
	partialButterflyInverse8threadZeroB(src, line, 0, 1, 4, EE, 	g_aiT_GPU);

	/* Combining even and odd terms at each hierarchy levels to calculate the final spatial domain vector */
	partialButterfly4ThreadOneP(EE, 	EO, 	E);
	partialButterfly4ThreadOneN(EE, 	EO, 	E+3);
	partialButterfly4ThreadOneP(EE+1, 	EO+1, 	E+1);
	partialButterfly4ThreadOneN(EE+1, 	EO+1, 	E+2);

	for (k=0;k<4;k++)
	{
		partialButterflyInverse4ThreadTwo(E[k], 	 O[k], 		dst+k, 		shift, outputMinimum, outputMaximum, add);
		partialButterflyInverse4ThreadTwo(E[3-k], 	-O[3-k], 	dst+k+4, 	shift, outputMinimum, outputMaximum, add);
	}
}

/** 8x8 inverse transform implemented using partial butterfly structure (1D)
 *  \param src   input data (transform coefficients)
 *  \param dst   output data (residual)
 *  \param shift specifies right shift after 1D transform
 *  \param line
 *  \param outputMinimum  minimum for clipping
 *  \param outputMaximum  maximum for clipping
 */
__global__ Void partialButterflyInverse8(
		TCoeff*			src, \
		TCoeff*			dst, \
		Int 			shift, \
		Int 			line, \
		const TCoeff 	outputMinimum, \
		const TCoeff 	outputMaximum, \
		TMatrixCoeff *g_aiT_GPU)
{
	__shared__ TCoeff add;
	Int j = blockIdx.x * blockDim.x + threadIdx.x;
	__syncthreads();

	if(j == 0) add = (shift > 0) ? (1<<(shift-1)) : 0;
	__syncthreads();

	if(j < 8)
	{
		partialButterflyInverse8threadZero(src+j, dst+8*j, shift, line, outputMinimum, outputMaximum, add, g_aiT_GPU);
	}
}



__device__ Void partialButterfly16threadZeroA(\
		TCoeff*	src, \
		Int 	ai, \
		Int 	aj, \
		Int 	si, \
		Int 	bi, \
		Int 	bj, \
		Int 	sj, \
		TCoeff 	add, \
		Int 	shift, \
		TCoeff*	dst, \
		TMatrixCoeff *g_aiT_GPU)
{
	*dst = (*(g_aiT_GPU+16*ai+aj)*(*(src+si)) + *(g_aiT_GPU+16*bi+bj)*(*(src+sj)) + add)>>shift;
}

__device__ Void partialButterfly16threadZeroB(\
		TCoeff*	src, \
		Int 	k, \
		TCoeff 	add, \
		Int 	shift, \
		TCoeff*	dst, \
		TMatrixCoeff *g_aiT_GPU)
{
	*dst = (*(g_aiT_GPU+16*k)*(*(src)) + *(g_aiT_GPU+16*k+1)*(*(src+1)) +
			*(g_aiT_GPU+16*k+2)*(*(src+2)) + *(g_aiT_GPU+16*k+3)*(*(src+3)) + add)>>shift;
}

__device__ Void partialButterfly16threadZeroC(\
		TCoeff*	src, \
		Int 	k, \
		TCoeff 	add, \
		Int 	shift, \
		TCoeff*	dst, \
		TMatrixCoeff *g_aiT_GPU)
{
	*dst = (*(g_aiT_GPU+16*k)*(*(src)) + *(g_aiT_GPU+16*k+1)*(*(src+1)) +
			*(g_aiT_GPU+16*k+2)*(*(src+2)) + *(g_aiT_GPU+16*k+3)*(*(src+3)) +
			*(g_aiT_GPU+16*k+4)*(*(src+4)) + *(g_aiT_GPU+16*k+5)*(*(src+5)) +
			*(g_aiT_GPU+16*k+6)*(*(src+6)) + *(g_aiT_GPU+16*k+7)*(*(src+7)) + add)>>shift;
}

__device__ Void partialButterfly16threadZero(\
		TCoeff*	src, \
		TCoeff*	dst, \
		Int 	shift, \
		Int 	line, \
		TCoeff 	add, \
		TMatrixCoeff *g_aiT_GPU)
{
	Int k;
	TCoeff E[8],O[8];
	TCoeff EE[4],EO[4];
	TCoeff EEE[2],EEO[2];
	/* E and O*/
	for (k=0;k<8;k++)
	{
		partialButterfly4ThreadOneP(src+k, 	src+15-k, 	E+k);
		partialButterfly4ThreadOneN(src+k, 	src+15-k, 	O+k);
	}

	/* EE and EO */
	for (k=0;k<4;k++)
	{
		partialButterfly4ThreadOneP(E+k, 	E+7-k, 	EE+k);
		partialButterfly4ThreadOneN(E+k, 	E+7-k, 	EO+k);
	}

	/* EEE and EEO */

	partialButterfly4ThreadOneP(EE, 	EE+3, 	EEE);
	partialButterfly4ThreadOneN(EE, 	EE+3, 	EEO);
	partialButterfly4ThreadOneP(EE+1, 	EE+2, 	EEE+1);
	partialButterfly4ThreadOneN(EE+1, 	EE+2, 	EEO+1);

	partialButterfly16threadZeroA(EEE, 0, 	0, 0, 0, 	1, 1, add, shift, dst, 		g_aiT_GPU);
	partialButterfly16threadZeroA(EEE, 8, 	0, 0, 8, 	1, 1, add, shift, dst+ 8*line, 	g_aiT_GPU);
	partialButterfly16threadZeroA(EEO, 4, 	0, 0, 4, 	1, 1, add, shift, dst+4*line, 	g_aiT_GPU);
	partialButterfly16threadZeroA(EEO, 12, 	0, 0, 12, 	1, 1, add, shift, dst+12*line, 	g_aiT_GPU);

	for (k=2;k<16;k+=4)
	{
		partialButterfly16threadZeroB(EO, k, add, shift, dst+k*line, g_aiT_GPU);
	}

	for (k=1;k<16;k+=2)
	{
		partialButterfly16threadZeroC(O, k, add, shift, dst+k*line, g_aiT_GPU);
	}
}

/** 16x16 forward transform implemented using partial butterfly structure (1D)
 *  \param src   input data (residual)
 *  \param dst   output data (transform coefficients)
 *  \param shift specifies right shift after 1D transform
 *  \param line
 */
__global__ Void partialButterfly16(\
		TCoeff*	src, \
		TCoeff*	dst, \
		Int 	shift, \
		Int 	line, \
		TMatrixCoeff *g_aiT_GPU)
{
	__shared__ TCoeff add;
	Int j = blockIdx.x * blockDim.x + threadIdx.x;
	__syncthreads();

	if(j == 0) add = (shift > 0) ? (1<<(shift-1)) : 0;
	__syncthreads();

	if(j < 16)
	{
		partialButterfly16threadZero(src+16*j, dst+j, shift, line, add, g_aiT_GPU);
	}
}


__device__ Void partialButterflyInverse16threadZeroA(\
		TCoeff* 	src, \
		Int 		line, \
		Int		k, \
		TCoeff* 	dst, \
		TMatrixCoeff *g_aiT_GPU)
{
	*(dst+k) = 	*(g_aiT_GPU+   16+k)*(*(src+   line))  	+ *(g_aiT_GPU+ 3*16+k)*(*(src+ 3*line)) +
			*(g_aiT_GPU+ 5*16+k)*(*(src+ 5*line)) 	+ *(g_aiT_GPU+ 7*16+k)*(*(src+ 7*line)) +
			*(g_aiT_GPU+ 9*16+k)*(*(src+ 9*line)) 	+ *(g_aiT_GPU+11*16+k)*(*(src+11*line)) +
			*(g_aiT_GPU+13*16+k)*(*(src+13*line)) 	+ *(g_aiT_GPU+15*16+k)*(*(src+15*line));
}

__device__ Void partialButterflyInverse16threadZeroB(\
		TCoeff* 	src, \
		Int 		line, \
		Int		k, \
		TCoeff* 	dst, \
		TMatrixCoeff *g_aiT_GPU)
{
	*(dst+k) = 	*(g_aiT_GPU+ 2*16+k)*(*(src+ 2*line)) + *(g_aiT_GPU+ 6*16+k)*(*(src+ 6*line)) +
			*(g_aiT_GPU+10*16+k)*(*(src+10*line)) + *(g_aiT_GPU+14*16+k)*(*(src+14*line));
}

__device__ Void partialButterflyInverse16threadZeroC(\
		TCoeff* 	src, \
		Int 		ai, \
		Int 		k, \
		Int 		bi, \
		Int 		line, \
		TCoeff* 	dst, \
		TMatrixCoeff *g_aiT_GPU)
{
	*(dst+k) = *(g_aiT_GPU+16*ai+k)*(*(src+ai*line )) + *(g_aiT_GPU+16*bi+k)*(*(src+bi*line ));
}

__device__ Void partialButterflyInverse16threadZero(\
		TCoeff*			src, \
		TCoeff*			dst, \
		Int 			shift, \
		Int 			line, \
		const TCoeff 	outputMinimum, \
		const TCoeff 	outputMaximum, \
		TCoeff 			add, \
		TMatrixCoeff *g_aiT_GPU)
{
	Int k;
	TCoeff E[8],O[8];
	TCoeff EE[4],EO[4];
	TCoeff EEE[2],EEO[2];

	/* Utilizing symmetry properties to the maximum to minimize the number of multiplications */
	for (k=0;k<8;k++)
	{
		partialButterflyInverse16threadZeroA(src, line, k, O, g_aiT_GPU);
	}

	for (k=0;k<4;k++)
	{
		partialButterflyInverse16threadZeroB(src, line, k, EO, g_aiT_GPU);
	}

	partialButterflyInverse16threadZeroC(src, 4, 0, 12, line, EEO, 	g_aiT_GPU);
	partialButterflyInverse16threadZeroC(src, 0, 0,  8, line, EEE, 	g_aiT_GPU);
	partialButterflyInverse16threadZeroC(src, 4, 1, 12, line, EEO, 	g_aiT_GPU);
	partialButterflyInverse16threadZeroC(src, 0, 1,  8, line, EEE, 	g_aiT_GPU);

	/* Combining even and odd terms at each hierarchy levels to calculate the final spatial domain vector */
	for (k=0;k<2;k++)
	{
		partialButterfly4ThreadOneP(EEE+k, 	EEO+k, 		EE+k);
		partialButterfly4ThreadOneN(EEE+1-k, 	EEO+1-k, 	EE+k+2);
	}

	for (k=0;k<4;k++)
	{
		partialButterfly4ThreadOneP(EE+k, 	EO+k, 	E+k);
		partialButterfly4ThreadOneN(EE+3-k, 	EO+3-k, E+k+4);
	}

	for (k=0;k<8;k++)
	{
		partialButterflyInverse4ThreadTwo(E[k], 	 O[k], 		dst+k, 		shift, outputMinimum, outputMaximum, add);
		partialButterflyInverse4ThreadTwo(E[7-k], 	-O[7-k], 	dst+k+8, 	shift, outputMinimum, outputMaximum, add);
	}
}

/** 16x16 inverse transform implemented using partial butterfly structure (1D)
 *  \param src            input data (transform coefficients)
 *  \param dst            output data (residual)
 *  \param shift          specifies right shift after 1D transform
 *  \param line
 *  \param outputMinimum  minimum for clipping
 *  \param outputMaximum  maximum for clipping
 */
__global__ Void partialButterflyInverse16(\
		TCoeff*			src, \
		TCoeff*			dst, \
		Int 			shift, \
		Int 			line, \
		const TCoeff 	outputMinimum, \
		const TCoeff 	outputMaximum, \
		TMatrixCoeff *g_aiT_GPU)
{
	__shared__ TCoeff add;
	Int j = blockIdx.x * blockDim.x + threadIdx.x;
	__syncthreads();

	if(j == 0) add = (shift > 0) ? (1<<(shift-1)) : 0;
	__syncthreads();

	if(j < 16)
	{
		partialButterflyInverse16threadZero(src+j, dst+16*j, shift, line, outputMinimum, outputMaximum, add, g_aiT_GPU);
	}
}



__device__ Void partialButterfly32threadZeroA(\
		TCoeff* src, \
		TCoeff* dst, \
		Int 	k, \
		Int 	line, \
		TCoeff 	add, \
		Int 	shift, \
		TMatrixCoeff *g_aiT_GPU)
{
	*(dst+k*line) = (*(g_aiT_GPU+32*k)*(*(src)) + *(g_aiT_GPU+32*k+1)*(*(src+1)) + add)>>shift;
}

__device__ Void partialButterfly32threadZeroB(\
		TCoeff* src, \
		TCoeff* dst, \
		Int 	k, \
		Int 	line, \
		TCoeff 	add, \
		Int 	shift, \
		TMatrixCoeff *g_aiT_GPU)
{
	*(dst+k*line) = (*(g_aiT_GPU+32*k)*(*(src)) + *(g_aiT_GPU+32*k+1)*(*(src+1)) +
			*(g_aiT_GPU+32*k+2)*(*(src+2)) + *(g_aiT_GPU+32*k+3)*(*(src+3)) + add)>>shift;
}

__device__ Void partialButterfly32threadZeroC(\
		TCoeff* src, \
		TCoeff* dst, \
		Int 	k, \
		Int 	line, \
		TCoeff 	add, \
		Int 	shift, \
		TMatrixCoeff *g_aiT_GPU)
{
	*(dst+k*line) = (*(g_aiT_GPU+32*k)*(*(src)) + *(g_aiT_GPU+32*k+1)*(*(src+1)) +
			*(g_aiT_GPU+32*k+2)*(*(src+2)) + *(g_aiT_GPU+32*k+3)*(*(src+3)) +
			*(g_aiT_GPU+32*k+4)*(*(src+4)) + *(g_aiT_GPU+32*k+5)*(*(src+5)) +
			*(g_aiT_GPU+32*k+6)*(*(src+6)) + *(g_aiT_GPU+32*k+7)*(*(src+7)) + add)>>shift;
}

__device__ Void partialButterfly32threadZeroD(\
		TCoeff* src, \
		TCoeff* dst, \
		Int 	k, \
		Int 	line, \
		TCoeff 	add, \
		Int 	shift, \
		TMatrixCoeff *g_aiT_GPU)
{
	*(dst+k*line) = (*(g_aiT_GPU+32*k)*(*(src)) + *(g_aiT_GPU+32*k+1)*(*(src+1)) +
			*(g_aiT_GPU+32*k+2)*(*(src+2)) 	+ *(g_aiT_GPU+32*k+3)*(*(src+3)) +
			*(g_aiT_GPU+32*k+4)*(*(src+4)) 	+ *(g_aiT_GPU+32*k+5)*(*(src+5)) +
			*(g_aiT_GPU+32*k+6)*(*(src+6)) 	+ *(g_aiT_GPU+32*k+7)*(*(src+7)) +
			*(g_aiT_GPU+32*k+8)*(*(src+8)) 	+ *(g_aiT_GPU+32*k+9)*(*(src+9)) +
			*(g_aiT_GPU+32*k+10)*(*(src+10)) 	+ *(g_aiT_GPU+32*k+11)*(*(src+11)) +
			*(g_aiT_GPU+32*k+12)*(*(src+12)) 	+ *(g_aiT_GPU+32*k+13)*(*(src+13)) +
			*(g_aiT_GPU+32*k+14)*(*(src+14)) 	+ *(g_aiT_GPU+32*k+15)*(*(src+15)) + add)>>shift;
}

__device__ Void partialButterfly32threadZero(\
		TCoeff* src, \
		TCoeff* dst, \
		Int 	shift, \
		Int 	line, \
		TCoeff 	add, \
		TMatrixCoeff *g_aiT_GPU)
{
	Int k;
	TCoeff E[16],O[16];
	TCoeff EE[8],EO[8];
	TCoeff EEE[4],EEO[4];
	TCoeff EEEE[2],EEEO[2];

	/* E and O*/
	for (k=0;k<16;k++)
	{
		partialButterfly4ThreadOneP(src+k, src+31-k, E+k);
		partialButterfly4ThreadOneN(src+k, src+31-k, O+k);
	}

	/* EE and EO */
	for (k=0;k<8;k++)
	{
		partialButterfly4ThreadOneP(E+k, E+15-k, EE+k);
		partialButterfly4ThreadOneN(E+k, E+15-k, EO+k);
	}

	/* EEE and EEO */
	for (k=0;k<4;k++)
	{
		partialButterfly4ThreadOneP(EE+k, EE+7-k, EEE+k);
		partialButterfly4ThreadOneN(EE+k, EE+7-k, EEO+k);
	}

	/* EEEE and EEEO */
	partialButterfly4ThreadOneP(EEE, EEE+3, EEEE);
	partialButterfly4ThreadOneN(EEE, EEE+3, EEEO);
	partialButterfly4ThreadOneP(EEE+1, EEE+2, EEEE+1);
	partialButterfly4ThreadOneN(EEE+1, EEE+2, EEEO+1);

	partialButterfly32threadZeroA(EEEE, dst,  0, line, add, shift, g_aiT_GPU);
	partialButterfly32threadZeroA(EEEE, dst, 16, line, add, shift, g_aiT_GPU);
	partialButterfly32threadZeroA(EEEO, dst,  8, line, add, shift, g_aiT_GPU);
	partialButterfly32threadZeroA(EEEO, dst, 24, line, add, shift, g_aiT_GPU);

	for (k=4;k<32;k+=8)
	{
		partialButterfly32threadZeroB(EEO, dst,  k, line, add, shift, g_aiT_GPU);
	}

	for (k=2;k<32;k+=4)
	{
		partialButterfly32threadZeroC(EO, dst,  k, line, add, shift, g_aiT_GPU);
	}

	for (k=1;k<32;k+=2)
	{
		partialButterfly32threadZeroD(O, dst,  k, line, add, shift, g_aiT_GPU);
	}
}

/** 32x32 forward transform implemented using partial butterfly structure (1D)
 *  \param src   input data (residual)
 *  \param dst   output data (transform coefficients)
 *  \param shift specifies right shift after 1D transform
 *  \param line
 */
__global__ Void partialButterfly32(TCoeff *src, TCoeff *dst, Int shift, Int line, \
		TMatrixCoeff *g_aiT_GPU)
{
	__shared__ TCoeff add;
	Int j = blockIdx.x * blockDim.x + threadIdx.x;
	__syncthreads();

	if(j == 0) add = (shift > 0) ? (1<<(shift-1)) : 0;
	__syncthreads();

	if(j < 32)
	{
		partialButterfly32threadZero(src+32*j, dst+j, shift, line, add, g_aiT_GPU);
	}
}



__device__ Void partialButterflyInverse32threadZeroA(\
		TCoeff* 		src, \
		Int 			k, \
		Int 			line, \
		TCoeff* 		dst, \
		TMatrixCoeff *g_aiT_GPU)
{
	*(dst + k) = 	*(g_aiT_GPU+k+32   )*(*(src+ line    )) + *(g_aiT_GPU+k+3*32 )*(*(src+ 3*line  )) +
			*(g_aiT_GPU+k+5*32 )*(*(src+ 5*line  )) + *(g_aiT_GPU+k+7*32 )*(*(src+ 7*line  )) +
			*(g_aiT_GPU+k+9*32 )*(*(src+ 9*line  )) + *(g_aiT_GPU+k+11*32)*(*(src+ 11*line )) +
			*(g_aiT_GPU+k+13*32)*(*(src+ 13*line )) + *(g_aiT_GPU+k+15*32)*(*(src+ 15*line )) +
			*(g_aiT_GPU+k+17*32)*(*(src+ 17*line )) + *(g_aiT_GPU+k+19*32)*(*(src+ 19*line )) +
			*(g_aiT_GPU+k+21*32)*(*(src+ 21*line )) + *(g_aiT_GPU+k+23*32)*(*(src+ 23*line )) +
			*(g_aiT_GPU+k+25*32)*(*(src+ 25*line )) + *(g_aiT_GPU+k+27*32)*(*(src+ 27*line )) +
			*(g_aiT_GPU+k+29*32)*(*(src+ 29*line )) + *(g_aiT_GPU+k+31*32)*(*(src+ 31*line ));
}

__device__ Void partialButterflyInverse32threadZeroB(\
		TCoeff* 		src, \
		Int 			k, \
		Int 			line, \
		TCoeff* 		dst, \
		TMatrixCoeff *g_aiT_GPU)
{
	*(dst + k) = 	*(g_aiT_GPU+k+2*32 )*(*(src+ 2*line  )) + *(g_aiT_GPU+k+6*32 )*(*(src+ 6*line  )) +
			*(g_aiT_GPU+k+10*32)*(*(src+ 10*line )) + *(g_aiT_GPU+k+14*32)*(*(src+ 14*line )) +
			*(g_aiT_GPU+k+18*32)*(*(src+ 18*line )) + *(g_aiT_GPU+k+22*32)*(*(src+ 22*line )) +
			*(g_aiT_GPU+k+26*32)*(*(src+ 26*line )) + *(g_aiT_GPU+k+30*32)*(*(src+ 30*line ));
}

__device__ Void partialButterflyInverse32threadZeroC(\
		TCoeff* 		src, \
		Int 			k, \
		Int 			line, \
		TCoeff* 		dst, \
		TMatrixCoeff *g_aiT_GPU)
{
	*(dst + k) = 	*(g_aiT_GPU+k+ 4*32)*(*(src+  4*line )) + *(g_aiT_GPU+k+12*32)*(*(src+ 12*line )) +
			*(g_aiT_GPU+k+20*32)*(*(src+ 20*line )) + *(g_aiT_GPU+k+28*32)*(*(src+ 28*line ));
}

__device__ Void partialButterflyInverse32threadZeroD(\
		TCoeff* 	src, \
		Int 		ai, \
		Int 		k, \
		Int 		bi, \
		Int 		line, \
		TCoeff* 	dst, \
		TMatrixCoeff *g_aiT_GPU)
{
	*(dst+k) = *(g_aiT_GPU+k+ai*32)*(*(src+ ai*line )) + *(g_aiT_GPU+k+bi*32)*(*(src+ bi*line ));
}


__device__ Void partialButterflyInverse32threadZero(\
		TCoeff* 		src, \
		TCoeff* 		dst, \
		Int 			shift, \
		Int 			line, \
		const TCoeff 	outputMinimum, \
		const TCoeff 	outputMaximum, \
		TCoeff 			add, \
		TMatrixCoeff *g_aiT_GPU)
{
	Int k;
	TCoeff E[16],O[16];
	TCoeff EE[8],EO[8];
	TCoeff EEE[4],EEO[4];
	TCoeff EEEE[2],EEEO[2];

	for (k=0;k<16;k++)
	{
		partialButterflyInverse32threadZeroA(src, k, line, O, g_aiT_GPU);
	}

	for (k=0;k<8;k++)
	{
		partialButterflyInverse32threadZeroB(src, k, line, EO, g_aiT_GPU);
	}

	for (k=0;k<4;k++)
	{
		partialButterflyInverse32threadZeroC(src, k, line, EEO, g_aiT_GPU);
	}

	partialButterflyInverse32threadZeroD(src, 8, 0, 24, line, EEEO, 	g_aiT_GPU);
	partialButterflyInverse32threadZeroD(src, 0, 0, 16, line, EEEE, 	g_aiT_GPU);
	partialButterflyInverse32threadZeroD(src, 8, 1, 24, line, EEEO, 	g_aiT_GPU);
	partialButterflyInverse32threadZeroD(src, 0, 1, 16, line, EEEE, 	g_aiT_GPU);

	/* Combining even and odd terms at each hierarchy levels to calculate the final spatial domain vector */
	partialButterfly4ThreadOneP(EEEE, 	EEEO,   EEE);
	partialButterfly4ThreadOneN(EEEE, 	EEEO,   EEE+3);
	partialButterfly4ThreadOneP(EEEE+1, 	EEEO+1, EEE+1);
	partialButterfly4ThreadOneN(EEEE+1, 	EEEO+1, EEE+2);

	for (k=0;k<4;k++)
	{
		partialButterfly4ThreadOneP(EEE+k, 	EEO+k,		EE+k);
		partialButterfly4ThreadOneN(EEE+3-k, 	EEO+3-k, 	EE+k+4);
	}

	for (k=0;k<8;k++)
	{
		partialButterfly4ThreadOneP(EE+k, 	EO+k,	E+k);
		partialButterfly4ThreadOneN(EE+7-k, 	EO+7-k, E+k+8);
	}

	for (k=0;k<16;k++)
	{
		partialButterflyInverse4ThreadTwo(E[k], 	 O[k], 		dst+k, 		shift, outputMinimum, outputMaximum, add);
		partialButterflyInverse4ThreadTwo(E[15-k], 	-O[15-k], 	dst+k+16, 	shift, outputMinimum, outputMaximum, add);
	}
}


/** 32x32 inverse transform implemented using partial butterfly structure (1D)
 *  \param src   input data (transform coefficients)
 *  \param dst   output data (residual)
 *  \param shift specifies right shift after 1D transform
 *  \param line
 *  \param outputMinimum  minimum for clipping
 *  \param outputMaximum  maximum for clipping
 */
__global__ Void partialButterflyInverse32(\
		TCoeff* 		src, \
		TCoeff* 		dst, \
		Int 			shift, \
		Int 			line, \
		const TCoeff 	outputMinimum, \
		const TCoeff 	outputMaximum, \
		TMatrixCoeff *g_aiT_GPU)
{
	__shared__ TCoeff add;
	Int j = blockIdx.x * blockDim.x + threadIdx.x;
	__syncthreads();

	if(j == 0) add = (shift > 0) ? (1<<(shift-1)) : 0;
	__syncthreads();

	if(j < 32)
	{
		partialButterflyInverse32threadZero(src+j, dst+32*j, shift, line, outputMinimum, outputMaximum, add, g_aiT_GPU);
	}
}

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
	TCoeff *block_GPU, *coeff_GPU, *tmp_GPU, *p;
	TMatrixCoeff *g_aiT_GPU, *pg;

	Int block_size = 0;

	const Int TRANSFORM_MATRIX_SHIFT = g_transformMatrixShift[TRANSFORM_FORWARD];
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

	const Int shift_1st = ((g_aucConvertToBit[iWidth] + 2) +  bitDepth + TRANSFORM_MATRIX_SHIFT) - maxLog2TrDynamicRange;
	const Int shift_2nd = (g_aucConvertToBit[iHeight] + 2) + TRANSFORM_MATRIX_SHIFT;

	assert(shift_1st >= 0);
	assert(shift_2nd >= 0);

	switch (iWidth)
	{
	case 4:
		block_size = 16;
		cudaMalloc(&block_GPU, 	16*sizeof(TCoeff));
		cudaMalloc(&tmp_GPU, 	16*sizeof(TCoeff));
		cudaMalloc(&g_aiT_GPU, 	16*sizeof(TMatrixCoeff));

		p = block;
		cudaMemcpy(block_GPU, p, 16*sizeof(TCoeff), cudaMemcpyHostToDevice);
		pg = (TMatrixCoeff*)&g_aiT4[TRANSFORM_FORWARD][0][0];
		cudaMemcpy(g_aiT_GPU, pg, 16*sizeof(TMatrixCoeff), cudaMemcpyHostToDevice);

		partialButterfly4<<<1,16>>>(block_GPU, tmp_GPU, shift_1st, iHeight, g_aiT_GPU);
		break;
	case 8:
		block_size = 64;
		cudaMalloc(&block_GPU, 	64*sizeof(TCoeff));
		cudaMalloc(&tmp_GPU, 	64*sizeof(TCoeff));
		cudaMalloc(&g_aiT_GPU, 	64*sizeof(TMatrixCoeff));

		p = block;
		cudaMemcpy(block_GPU, p, 64*sizeof(TCoeff), cudaMemcpyHostToDevice);
		pg = (TMatrixCoeff*)&g_aiT8[TRANSFORM_FORWARD][0][0];
		cudaMemcpy(g_aiT_GPU, pg, 64*sizeof(TMatrixCoeff), cudaMemcpyHostToDevice);

		partialButterfly8<<<1,64>>>(block_GPU, tmp_GPU, shift_1st, iHeight, g_aiT_GPU);
		break;
	case 16:
		block_size = 256;
		cudaMalloc(&block_GPU, 	256*sizeof(TCoeff));
		cudaMalloc(&tmp_GPU, 	256*sizeof(TCoeff));
		cudaMalloc(&g_aiT_GPU, 	256*sizeof(TMatrixCoeff));

		p = block;
		cudaMemcpy(block_GPU, p, 256*sizeof(TCoeff), cudaMemcpyHostToDevice);
		pg = (TMatrixCoeff*)&g_aiT16[TRANSFORM_FORWARD][0][0];
		cudaMemcpy(g_aiT_GPU, pg, 256*sizeof(TMatrixCoeff), cudaMemcpyHostToDevice);

		partialButterfly16<<<1,256>>>(block_GPU, tmp_GPU, shift_1st, iHeight, g_aiT_GPU);
		break;
	case 32:
		block_size = 1024;
		cudaMalloc(&block_GPU, 	1024*sizeof(TCoeff));
		cudaMalloc(&tmp_GPU, 	1024*sizeof(TCoeff));
		cudaMalloc(&g_aiT_GPU, 	1024*sizeof(TMatrixCoeff));

		p = block;
		cudaMemcpy(block_GPU, p, 1024*sizeof(TCoeff), cudaMemcpyHostToDevice);
		pg = (TMatrixCoeff*)&g_aiT32[TRANSFORM_FORWARD][0][0];
		cudaMemcpy(g_aiT_GPU, pg, 1024*sizeof(TMatrixCoeff), cudaMemcpyHostToDevice);

		partialButterfly32<<<4,256>>>(block_GPU, tmp_GPU, shift_1st, iHeight, g_aiT_GPU);
		break;
	default:
		assert(0); exit (1); break;
	}
	cudaThreadSynchronize();

	cudaMalloc(&coeff_GPU, 	block_size*sizeof(TCoeff));

	p = coeff;
	cudaMemcpy(coeff_GPU, p, block_size*sizeof(TCoeff), cudaMemcpyHostToDevice);

	switch (iHeight)
	{
	case 4:
		partialButterfly4<<<1,16>>>(tmp_GPU, coeff_GPU, shift_1st, iHeight, g_aiT_GPU);
		break;
	case 8:
		partialButterfly8<<<1,64>>>(tmp_GPU, coeff_GPU, shift_1st, iHeight, g_aiT_GPU);
		break;
	case 16:
		partialButterfly16<<<1,256>>>(tmp_GPU, coeff_GPU, shift_1st, iHeight, g_aiT_GPU);
		break;
	case 32:
		partialButterfly32<<<4,256>>>(tmp_GPU, coeff_GPU, shift_1st, iHeight, g_aiT_GPU);
		break;
	default:
		assert(0); exit (1); break;
	}
	cudaThreadSynchronize();

	cudaMemcpy(coeff, coeff_GPU, block_size*sizeof(TCoeff), cudaMemcpyDeviceToHost);

	cudaFree(block_GPU);
	cudaFree(coeff_GPU);
	cudaFree(tmp_GPU);
	cudaFree(g_aiT_GPU);
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
	TCoeff *block_GPU, *coeff_GPU, *tmp_GPU, *p;
	TMatrixCoeff *g_aiT_GPU, *pg;

	Int block_size = 0;

	const Int TRANSFORM_MATRIX_SHIFT = g_transformMatrixShift[TRANSFORM_INVERSE];

	Int shift_1st = TRANSFORM_MATRIX_SHIFT + 1; //1 has been added to shift_1st at the expense of shift_2nd
	Int shift_2nd = (TRANSFORM_MATRIX_SHIFT + maxLog2TrDynamicRange - 1) - bitDepth;
	const TCoeff clipMinimum = -(1 << maxLog2TrDynamicRange);
	const TCoeff clipMaximum =  (1 << maxLog2TrDynamicRange) - 1;

	assert(shift_1st >= 0);
	assert(shift_2nd >= 0);

	switch (iHeight)
	{
	case  4:
		block_size = 16;
		cudaMalloc(&coeff_GPU, 	16*sizeof(TCoeff));
		cudaMalloc(&tmp_GPU, 	16*sizeof(TCoeff));
		cudaMalloc(&g_aiT_GPU, 	16*sizeof(TMatrixCoeff));

		p = coeff;
		cudaMemcpy(coeff_GPU, p, 16*sizeof(TCoeff), cudaMemcpyHostToDevice);
		pg = (TMatrixCoeff*)&g_aiT4[TRANSFORM_INVERSE][0][0];
		cudaMemcpy(g_aiT_GPU, pg, 16*sizeof(TMatrixCoeff), cudaMemcpyHostToDevice);

		partialButterflyInverse4<<<1,16>>>(coeff_GPU, tmp_GPU, shift_1st, iWidth, clipMinimum, clipMaximum, g_aiT_GPU);
		break;
	case  8:
		block_size = 64;
		cudaMalloc(&coeff_GPU, 	64*sizeof(TCoeff));
		cudaMalloc(&tmp_GPU, 	64*sizeof(TCoeff));
		cudaMalloc(&g_aiT_GPU, 	64*sizeof(TMatrixCoeff));

		p = coeff;
		cudaMemcpy(coeff_GPU, p, 64*sizeof(TCoeff), cudaMemcpyHostToDevice);
		pg = (TMatrixCoeff*)&g_aiT8[TRANSFORM_INVERSE][0][0];
		cudaMemcpy(g_aiT_GPU, pg, 64*sizeof(TMatrixCoeff), cudaMemcpyHostToDevice);

		partialButterflyInverse8<<<1,64>>>(coeff_GPU, tmp_GPU, shift_1st, iWidth, clipMinimum, clipMaximum, g_aiT_GPU);
		break;
	case 16:
		block_size = 256;
		cudaMalloc(&coeff_GPU, 	256*sizeof(TCoeff));
		cudaMalloc(&tmp_GPU, 	256*sizeof(TCoeff));
		cudaMalloc(&g_aiT_GPU, 	256*sizeof(TMatrixCoeff));

		p = coeff;
		cudaMemcpy(coeff_GPU, p, 256*sizeof(TCoeff), cudaMemcpyHostToDevice);
		pg = (TMatrixCoeff*)&g_aiT16[TRANSFORM_INVERSE][0][0];
		cudaMemcpy(g_aiT_GPU, pg, 256*sizeof(TMatrixCoeff), cudaMemcpyHostToDevice);

		partialButterflyInverse16<<<1,256>>>(coeff_GPU, tmp_GPU, shift_1st, iWidth, clipMinimum, clipMaximum, g_aiT_GPU);
		break;
	case 32:
		block_size = 1024;
		cudaMalloc(&coeff_GPU, 	1024*sizeof(TCoeff));
		cudaMalloc(&tmp_GPU, 	1024*sizeof(TCoeff));
		cudaMalloc(&g_aiT_GPU, 	1024*sizeof(TMatrixCoeff));

		p = coeff;
		cudaMemcpy(coeff_GPU, p, 1024*sizeof(TCoeff), cudaMemcpyHostToDevice);
		pg = (TMatrixCoeff*)&g_aiT32[TRANSFORM_INVERSE][0][0];
		cudaMemcpy(g_aiT_GPU, pg, 1024*sizeof(TMatrixCoeff), cudaMemcpyHostToDevice);

		partialButterflyInverse32<<<4,256>>>(coeff_GPU, tmp_GPU, shift_1st, iWidth, clipMinimum, clipMaximum, g_aiT_GPU);
		break;
	default:
		assert(0); exit (1); break;
	}
	cudaThreadSynchronize();

	cudaMalloc(&block_GPU, 	block_size*sizeof(TCoeff));

	p = block;
	cudaMemcpy(block_GPU, p, block_size*sizeof(TCoeff), cudaMemcpyHostToDevice);

	switch (iWidth)
	{
	// Clipping here is not in the standard, but is used to protect the "Pel" data type into which the inverse-transformed samples will be copied
	case  4:
		partialButterflyInverse4<<<1,16>>>(tmp_GPU, block_GPU, shift_2nd, iHeight, std::numeric_limits<Pel>::min(), std::numeric_limits<Pel>::max(), g_aiT_GPU);
		break;
	case  8:
		partialButterflyInverse8<<<1,64>>>(tmp_GPU, block_GPU, shift_2nd, iHeight, std::numeric_limits<Pel>::min(), std::numeric_limits<Pel>::max(), g_aiT_GPU);
		break;
	case 16:
		partialButterflyInverse16<<<1,256>>>(tmp_GPU, block_GPU, shift_2nd, iHeight, std::numeric_limits<Pel>::min(), std::numeric_limits<Pel>::max(), g_aiT_GPU);
		break;
	case 32:
		partialButterflyInverse32<<<4,256>>>(tmp_GPU, block_GPU, shift_2nd, iHeight, std::numeric_limits<Pel>::min(), std::numeric_limits<Pel>::max(), g_aiT_GPU);
		break;
	default:
		assert(0); exit (1); break;
	}
	cudaThreadSynchronize();

	cudaMemcpy(block, block_GPU, block_size*sizeof(TCoeff), cudaMemcpyDeviceToHost);

	cudaFree(block_GPU);
	cudaFree(coeff_GPU);
	cudaFree(tmp_GPU);
	cudaFree(g_aiT_GPU);
}

DCTHEVCdct::DCTHEVCdct() {
	initROM();
}
