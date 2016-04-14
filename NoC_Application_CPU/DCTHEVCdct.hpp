/*
 * DCTHEVCdct.h
 *
 *  Created on: 5 Mar 2016
 *      Author: vegan
 */

#ifndef DCTHEVCDCT_HPP_
#define DCTHEVCDCT_HPP_

#include "DCTHEVC.hpp"
#include <stdlib.h>
#include <stdio.h>
#include <memory.h>
#include<iostream>

class DCTHEVCdct {
public:
//	DCTHEVCdct();
//	SChar   g_aucConvertToBit  [ MAX_CU_SIZE+1 ];   // from width to log2(width)-2
//
//	Void initROM()
//	{
//	  Int i, c;
//
//	  // g_aucConvertToBit[ x ]: log2(x/4), if x=4 -> 0, x=8 -> 1, x=16 -> 2, ...
//	  ::memset( g_aucConvertToBit,   -1, sizeof( g_aucConvertToBit ) );
//	  c=0;
//	  for ( i=4; i<=MAX_CU_SIZE; i*=2 )
//	  {
//	    g_aucConvertToBit[ i ] = c;
//	    c++;
//	  }
//	}
};
//#if MATRIX_MULT
/** NxN forward transform (2D) using brute force matrix multiplication (3 nested loops)
 *  \param block pointer to input data (residual)
 *  \param coeff pointer to output data (transform coefficients)
 *  \param uiStride stride of input data
 *  \param uiTrSize transform size (uiTrSize x uiTrSize)
 *  \param uiMode is Intra Prediction mode used in Mode-Dependent DCT/DST only
 */

Void xTr(Int bitDepth, Pel *block, TCoeff *coeff, UInt uiStride, UInt uiTrSize, Bool useDST, const Int maxLog2TrDynamicRange);
Void xITr(Int bitDepth, TCoeff *coeff, Pel *block, UInt uiStride, UInt uiTrSize, Bool useDST, const Int maxLog2TrDynamicRange);
Void xTrMxN(Int bitDepth, TCoeff *block, TCoeff *coeff, Int iWidth, Int iHeight, Bool useDST, const Int maxLog2TrDynamicRange);
Void xITrMxN(Int bitDepth, TCoeff *coeff, TCoeff *block, Int iWidth, Int iHeight, Bool useDST, const Int maxLog2TrDynamicRange);
#endif /* DCTHEVCDCT_HPP_ */
