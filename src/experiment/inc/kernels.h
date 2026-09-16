#ifndef KERNELS_H
#define KERNELS_H

#include <stdint.h>

/**
 * @brief Runs vector multiply and accumulate (SAXPY) using SIMD vectorization.
 * Computes Y = A * X + Y.
 *
 * @param a Vector A
 * @param x Vector X
 * @param y Vector Y
 * @param len number of elements in the vector, the arrays must be (len * sizeof(a[0]) * stride) bytes long
 * @param stride the stride of the array, 1 = unit stride, 2 = an element every other block ...
 */
void kernels_SaxpyF32(float * a, float * x, float * y, uint32_t len, uint8_t stride);

/**
 * @brief Runs vector multiply and accumulate (SAXPY) using SIMD vectorization.
 * Computes Y = A * X + Y.
 *
 * @param a Vector A
 * @param x Vector X
 * @param y Vector Y
 * @param len number of elements in the vector, the arrays must be (len * sizeof(a[0]) * stride) bytes long
 * @param stride the stride of the array, 1 = unit stride, 2 = an element every other block ...
 */
void kernels_SaxpyF64(double * a, double * x, double * y, uint32_t len, uint8_t stride);

/**
 * @brief Runs element wise multiplication using SIMD vectorization.
 * Computes Z[i] = X[i] * Y[i] for 0 < i < len
 *
 * @param x Vector X
 * @param y Vector Y
 * @param z Vector Z for outputs
 * @param len number of elements in the vector, the arrays must be (len * sizeof(a[0]) * stride) bytes long
 * @param stride the stride of the array, 1 = unit stride, 2 = an element every other block ...
 */
void kernels_MultiplyF32(float * x, float * y, float * z, uint32_t len, uint8_t stride);

/**
 * @brief Runs element wise multiplication using SIMD vectorization.
 * Computes Z[i] = X[i] * Y[i] for 0 < i < len
 *
 * @param x Vector X
 * @param y Vector Y
 * @param z Vector Z for outputs
 * @param len number of elements in the vector, the arrays must be (len * sizeof(a[0]) * stride) bytes long
 * @param stride the stride of the array, 1 = unit stride, 2 = an element every other block ...
 */
void kernels_MultiplyF64(double * x, double * y, double * z, uint32_t len, uint8_t stride);

/**
 * @brief Runs 3-Way 1D Stencil using SIMD vectorization.
 * Computes Y[i] = a * x[i-1] + b * X[i] + c * X[i+1]
 *
 * @param x Vector X
 * @param y Vector Y
 * @param a first stencil multiplier
 * @param b second stencil multiplier
 * @param c third stencil multiplier
 * @param len number of elements in the vector, the arrays must be (len * sizeof(a[0]) * stride) bytes long
 * @param stride the stride of the array, 1 = unit stride, 2 = an element every other block ...
 */
void kernels_ThreeStencilF32(float * x, float * y, float a, float b, float c, uint32_t len, uint8_t stride);

/**
 * @brief Runs 3-Way 1D Stencil using SIMD vectorization.
 * Computes Y[i] = a * x[i-1] + b * X[i] + c * X[i+1]
 *
 * @param x Vector X
 * @param y Vector Y
 * @param a first stencil multiplier
 * @param b second stencil multiplier
 * @param c third stencil multiplier
 * @param len number of elements in the vector, the arrays must be (len * sizeof(a[0]) * stride) bytes long
 * @param stride the stride of the array, 1 = unit stride, 2 = an element every other block ...
 */
void kernels_ThreeStencilF64(double * x, double * y, double a, double b, double c, uint32_t len, uint8_t stride);



#endif /* KERNELS_H */
