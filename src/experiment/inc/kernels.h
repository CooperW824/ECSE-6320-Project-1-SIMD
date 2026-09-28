#ifndef KERNELS_H
#define KERNELS_H

#include <stddef.h>
#include <stdint.h>

/**
 * @brief Runs vector multiply and accumulate (SAXPY) using SIMD vectorization.
 * Computes Y = A * X + Y.
 *
 * @param a Vector A
 * @param x Vector X
 * @param y Vector Y
 * @param len number of elements in the vector, the arrays must be (len *
 * sizeof(a[0]) * stride) bytes long
 * @param stride the stride of the array, 1 = unit stride, 2 = an element every
 * other block ...
 */
void kernels_SaxpyF32(const float *restrict a, const float *restrict x,
                      float *restrict y, size_t len, size_t stride);

/**
 * @brief Runs vector multiply and accumulate (SAXPY) using SIMD vectorization.
 * Computes Y = A * X + Y.
 *
 * @param a Vector A
 * @param x Vector X
 * @param y Vector Y
 * @param len number of elements in the vector, the arrays must be (len *
 * sizeof(a[0]) * stride) bytes long
 * @param stride the stride of the array, 1 = unit stride, 2 = an element every
 * other block ...
 */
void kernels_SaxpyF64(const double *restrict a, const double *restrict x,
                      double *restrict y, size_t len, size_t stride);

/**
 * @brief Runs element wise multiplication using SIMD vectorization.
 * Computes Z[i] = X[i] * Y[i] for 0 < i < len
 *
 * @param x Vector X
 * @param y Vector Y
 * @param z Vector Z for outputs
 * @param len number of elements in the vector, the arrays must be (len *
 * sizeof(a[0]) * stride) bytes long
 * @param stride the stride of the array, 1 = unit stride, 2 = an element every
 * other block ...
 */
void kernels_MultiplyF32(const float *restrict x, const float *restrict y,
                         float *restrict z, size_t len, size_t stride);

/**
 * @brief Runs element wise multiplication using SIMD vectorization.
 * Computes Z[i] = X[i] * Y[i] for 0 < i < len
 *
 * @param x Vector X
 * @param y Vector Y
 * @param z Vector Z for outputs
 * @param len number of elements in the vector, the arrays must be (len *
 * sizeof(a[0]) * stride) bytes long
 * @param stride the stride of the array, 1 = unit stride, 2 = an element every
 * other block ...
 */
void kernels_MultiplyF64(const double *restrict x, const double *restrict y,
                         double *restrict z, size_t len, size_t stride);

/**
 * @brief Runs 3-Way 1D Stencil using SIMD vectorization.
 * Computes Y[i] = a * x[i-1] + b * X[i] + c * X[i+1]
 *
 * @param x Vector X
 * @param y Vector Y
 * @param a first stencil multiplier
 * @param b second stencil multiplier
 * @param c third stencil multiplier
 * @param len number of elements in the vector, the arrays must be (len *
 * sizeof(a[0]) * stride) bytes long
 * @param stride the stride of the array, 1 = unit stride, 2 = an element every
 * other block ...
 */
void kernels_ThreeStencilF32(const float *restrict x, float *restrict y,
                             float a, float b, float c, size_t len,
                             size_t stride);

/**
 * @brief Runs 3-Way 1D Stencil using SIMD vectorization.
 * Computes Y[i] = a * x[i-1] + b * X[i] + c * X[i+1]
 *
 * @param x Vector X
 * @param y Vector Y
 * @param a first stencil multiplier
 * @param b second stencil multiplier
 * @param c third stencil multiplier
 * @param len number of elements in the vector, the arrays must be (len *
 * sizeof(a[0]) * stride) bytes long
 * @param stride the stride of the array, 1 = unit stride, 2 = an element every
 * other block ...
 */
void kernels_ThreeStencilF64(const double *restrict x, double *restrict y,
                             double a, double b, double c, size_t len,
                             size_t stride);

#endif /* KERNELS_H */
