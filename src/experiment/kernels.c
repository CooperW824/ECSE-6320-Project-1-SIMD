
#include "inc/kernels.h"
#include <assert.h>
#include <immintrin.h>
#include <stddef.h>
#include <stdint.h>
#include <sys/types.h>
#include <xmmintrin.h>

#define AVX512_VECTOR_SIZE_BYTES 64


#ifdef VECTOR
void kernels_SaxpyF32(const float * restrict a, const float * restrict x,  float * restrict y, size_t len,
                      size_t stride) {
  const size_t VEC_LEN = AVX512_VECTOR_SIZE_BYTES / sizeof(a[0]);

  __m512i lanes =
      _mm512_setr_epi32(0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15);
  __m512i indices = _mm512_mullo_epi32(lanes, _mm512_set1_epi32(stride));

  size_t i = 0;
  for (; i + VEC_LEN <= len; i += VEC_LEN) {
    if (stride == 1) {
      __m512 a_subvector = _mm512_loadu_ps(&a[i]);
      __m512 x_subvector = _mm512_loadu_ps(&x[i]);
      __m512 y_subvector = _mm512_loadu_ps(&y[i]);

      __m512 saxpy_result =
          _mm512_fmadd_ps(a_subvector, x_subvector, y_subvector);
      _mm512_storeu_ps(&y[i], saxpy_result);
    } else {
      __m512 a_subvector =
          _mm512_i32gather_ps(indices, &a[i * stride], sizeof(a[0]));
      __m512 x_subvector =
          _mm512_i32gather_ps(indices, &x[i * stride], sizeof(a[0]));
      __m512 y_subvector =
          _mm512_i32gather_ps(indices, &y[i * stride], sizeof(a[0]));

      __m512 saxpy_result =
          _mm512_fmadd_ps(a_subvector, x_subvector, y_subvector);

      _mm512_i32scatter_ps(&y[i * stride], indices, saxpy_result, sizeof(a[0]));
    }
  }

  // Handle any remaining items on the tail using masking
  size_t remainder = len - i;
  if (remainder == 0)
    return;

  __mmask16 mask = (__mmask16)((1u << remainder) - 1);
  if (stride == 1) {
    __m512 y_v = _mm512_maskz_loadu_ps(mask, &y[i]);
    __m512 a_v = _mm512_maskz_loadu_ps(mask, &a[i]);
    __m512 x_v = _mm512_maskz_loadu_ps(mask, &x[i]);
    __m512 res = _mm512_fmadd_ps(a_v, x_v, y_v);
    _mm512_mask_storeu_ps(&y[i], mask, res);
  } else {
    __m512 y_v = _mm512_mask_i32gather_ps(_mm512_setzero_ps(), mask, indices,
                                          &y[i * stride], sizeof(a[0]));
    __m512 a_v = _mm512_mask_i32gather_ps(_mm512_setzero_ps(), mask, indices,
                                          &a[i * stride], sizeof(a[0]));
    __m512 x_v = _mm512_mask_i32gather_ps(_mm512_setzero_ps(), mask, indices,
                                          &x[i * stride], sizeof(a[0]));
    __m512 res = _mm512_fmadd_ps(a_v, x_v, y_v);
    _mm512_mask_i32scatter_ps(&y[i * stride], mask, indices, res, sizeof(a[0]));
  }
}
void kernels_SaxpyF64(const double * restrict a, const double * restrict x, double * restrict y, size_t len,
                      size_t stride) {
  const size_t VEC_LEN = AVX512_VECTOR_SIZE_BYTES / sizeof(a[0]);

  __m256i lanes = _mm256_setr_epi32(0, 1, 2, 3, 4, 5, 6, 7);
  __m256i indices = _mm256_mullo_epi32(lanes, _mm256_set1_epi32(stride));

  size_t i = 0;
  for (; i + VEC_LEN <= len; i += VEC_LEN) {
    if (stride == 1) {
      __m512d a_subvector = _mm512_loadu_pd(&a[i]);
      __m512d x_subvector = _mm512_loadu_pd(&x[i]);
      __m512d y_subvector = _mm512_loadu_pd(&y[i]);

      __m512d saxpy_result =
          _mm512_fmadd_pd(a_subvector, x_subvector, y_subvector);
      _mm512_storeu_pd(&y[i], saxpy_result);
    } else {
      __m512d a_subvector =
          _mm512_i32gather_pd(indices, &a[i * stride], sizeof(a[0]));
      __m512d x_subvector =
          _mm512_i32gather_pd(indices, &x[i * stride], sizeof(a[0]));
      __m512d y_subvector =
          _mm512_i32gather_pd(indices, &y[i * stride], sizeof(a[0]));

      __m512d saxpy_result =
          _mm512_fmadd_pd(a_subvector, x_subvector, y_subvector);

      _mm512_i32scatter_pd(&y[i * stride], indices, saxpy_result, sizeof(a[0]));
    }
  }

  // Handle any remaining items on the tail using masking
  size_t remainder = len - i;
  if (remainder == 0)
    return;

  __mmask8 mask = (__mmask8)((1u << remainder) - 1);
  if (stride == 1) {
    __m512d y_v = _mm512_maskz_loadu_pd(mask, &y[i]);
    __m512d a_v = _mm512_maskz_loadu_pd(mask, &a[i]);
    __m512d x_v = _mm512_maskz_loadu_pd(mask, &x[i]);
    __m512d res = _mm512_fmadd_pd(a_v, x_v, y_v);
    _mm512_mask_storeu_pd(&y[i], mask, res);
  } else {
    __m512d y_v = _mm512_mask_i32gather_pd(_mm512_setzero_pd(), mask, indices,
                                           &y[i * stride], sizeof(a[0]));
    __m512d a_v = _mm512_mask_i32gather_pd(_mm512_setzero_pd(), mask, indices,
                                           &a[i * stride], sizeof(a[0]));
    __m512d x_v = _mm512_mask_i32gather_pd(_mm512_setzero_pd(), mask, indices,
                                           &x[i * stride], sizeof(a[0]));
    __m512d res = _mm512_fmadd_pd(a_v, x_v, y_v);
    _mm512_mask_i32scatter_pd(&y[i * stride], mask, indices, res, sizeof(a[0]));
  }
}

void kernels_MultiplyF32(const float * restrict x, const float * restrict y, float * restrict z, size_t len,
                         size_t stride) {
  const size_t VEC_LEN = AVX512_VECTOR_SIZE_BYTES / sizeof(x[0]);

  __m512i lanes =
      _mm512_setr_epi32(0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15);
  __m512i indices = _mm512_mullo_epi32(lanes, _mm512_set1_epi32(stride));

  size_t i = 0;
  for (; i + VEC_LEN <= len; i += VEC_LEN) {
    if (stride == 1) {
      __m512 x_subvector = _mm512_loadu_ps(&x[i]);
      __m512 y_subvector = _mm512_loadu_ps(&y[i]);

      __m512 result = _mm512_mul_ps(x_subvector, y_subvector);
      _mm512_storeu_ps(&z[i], result);
    } else {
      __m512 x_subvector =
          _mm512_i32gather_ps(indices, &x[i * stride], sizeof(x[0]));
      __m512 y_subvector =
          _mm512_i32gather_ps(indices, &y[i * stride], sizeof(x[0]));

      __m512 result = _mm512_mul_ps(x_subvector, y_subvector);

      _mm512_i32scatter_ps(&z[i * stride], indices, result, sizeof(x[0]));
    }
  }

  // Handle any remaining items on the tail using masking
  size_t remainder = len - i;
  if (remainder == 0)
    return;

  __mmask16 mask = (__mmask16)((1u << remainder) - 1);
  if (stride == 1) {
    __m512 y_v = _mm512_maskz_loadu_ps(mask, &y[i]);
    __m512 x_v = _mm512_maskz_loadu_ps(mask, &x[i]);
    __m512 res = _mm512_mul_ps(x_v, y_v);
    _mm512_mask_storeu_ps(&z[i], mask, res);
  } else {
    __m512 y_v = _mm512_mask_i32gather_ps(_mm512_setzero_ps(), mask, indices,
                                          &y[i * stride], sizeof(x[0]));
    __m512 x_v = _mm512_mask_i32gather_ps(_mm512_setzero_ps(), mask, indices,
                                          &x[i * stride], sizeof(x[0]));
    __m512 res = _mm512_mul_ps(x_v, y_v);
    _mm512_mask_i32scatter_ps(&z[i * stride], mask, indices, res, sizeof(x[0]));
  }
}

void kernels_MultiplyF64(const double * restrict x, const double * restrict y, double * restrict z, size_t len,
                         size_t stride) {
  const size_t VEC_LEN = AVX512_VECTOR_SIZE_BYTES / sizeof(x[0]);

  __m256i lanes = _mm256_setr_epi32(0, 1, 2, 3, 4, 5, 6, 7);
  __m256i indices = _mm256_mullo_epi32(lanes, _mm256_set1_epi32(stride));

  size_t i = 0;
  for (; i + VEC_LEN <= len; i += VEC_LEN) {
    if (stride == 1) {
      __m512d x_subvector = _mm512_loadu_pd(&x[i]);
      __m512d y_subvector = _mm512_loadu_pd(&y[i]);

      __m512d result = _mm512_mul_pd(x_subvector, y_subvector);
      _mm512_storeu_pd(&z[i], result);
    } else {
      __m512d x_subvector =
          _mm512_i32gather_pd(indices, &x[i * stride], sizeof(x[0]));
      __m512d y_subvector =
          _mm512_i32gather_pd(indices, &y[i * stride], sizeof(x[0]));

      __m512d result = _mm512_mul_pd(x_subvector, y_subvector);

      _mm512_i32scatter_pd(&z[i * stride], indices, result, sizeof(x[0]));
    }
  }

  // Handle any remaining items on the tail using masking
  size_t remainder = len - i;
  if (remainder == 0)
    return;

  __mmask8 mask = (__mmask8)((1u << remainder) - 1);
  if (stride == 1) {
    __m512d y_v = _mm512_maskz_loadu_pd(mask, &y[i]);
    __m512d x_v = _mm512_maskz_loadu_pd(mask, &x[i]);
    __m512d res = _mm512_mul_pd(x_v, y_v);
    _mm512_mask_storeu_pd(&z[i], mask, res);
  } else {
    __m512d y_v = _mm512_mask_i32gather_pd(_mm512_setzero_pd(), mask, indices,
                                           &y[i * stride], sizeof(x[0]));
    __m512d x_v = _mm512_mask_i32gather_pd(_mm512_setzero_pd(), mask, indices,
                                           &x[i * stride], sizeof(x[0]));
    __m512d res = _mm512_mul_pd(x_v, y_v);
    _mm512_mask_i32scatter_pd(&z[i * stride], mask, indices, res, sizeof(x[0]));
  }
}

void kernels_ThreeStencilF32(const float * restrict x, float * restrict y, float a, float b, float c,
                             size_t len, size_t stride) {
  const size_t VEC_LEN = AVX512_VECTOR_SIZE_BYTES / sizeof(a);
  assert(len > VEC_LEN &&
         "Array Length Must Be Greater than Number of Elements in Vector");
  y[0] = 0.0f;
  y[(len - 1) * stride] = 0.0f;
  __m512 a_vec = _mm512_set1_ps(a);
  __m512 b_vec = _mm512_set1_ps(b);
  __m512 c_vec = _mm512_set1_ps(c);

  __m512i lanes =
      _mm512_setr_epi32(0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15);
  __m512i indices = _mm512_mullo_epi32(lanes, _mm512_set1_epi32(stride));

  size_t i = 1;
  for (; i <= len - VEC_LEN - 1; i += VEC_LEN) {
    if (stride == 1) {
      __m512 left_items = _mm512_loadu_ps(&x[i - 1]);
      __m512 middle_items = _mm512_loadu_ps(&x[i]);
      __m512 right_items = _mm512_loadu_ps(&x[i + 1]);

      left_items = _mm512_mul_ps(left_items, a_vec);
      middle_items = _mm512_mul_ps(middle_items, b_vec);
      right_items = _mm512_mul_ps(right_items, c_vec);

      __m512 result = _mm512_add_ps(left_items, middle_items);
      result = _mm512_add_ps(result, right_items);
      _mm512_storeu_ps(&y[i], result);
    } else {
      __m512 left_items =
          _mm512_i32gather_ps(indices, &x[(i - 1) * stride], sizeof(a));
      __m512 middle_items =
          _mm512_i32gather_ps(indices, &x[i * stride], sizeof(a));
      __m512 right_items =
          _mm512_i32gather_ps(indices, &x[(i + 1) * stride], sizeof(a));

      left_items = _mm512_mul_ps(left_items, a_vec);
      middle_items = _mm512_mul_ps(middle_items, b_vec);
      right_items = _mm512_mul_ps(right_items, c_vec);

      __m512 result = _mm512_add_ps(left_items, middle_items);
      result = _mm512_add_ps(result, right_items);
      _mm512_i32scatter_ps(&y[i * stride], indices, result, sizeof(a));
    }
  }

  // Handle any trailing items in parallel using masking
  size_t remainder = (len - 1) - i;
  if (remainder == 0)
    return;

  __mmask16 mask = (__mmask16)((1 << remainder) - 1);
  if (stride == 1) {
    __m512 left_items = _mm512_maskz_loadu_ps(mask, &x[i - 1]);
    __m512 middle_items = _mm512_maskz_loadu_ps(mask, &x[i]);
    __m512 right_items = _mm512_maskz_loadu_ps(mask, &x[i + 1]);

    left_items = _mm512_mul_ps(left_items, a_vec);
    middle_items = _mm512_mul_ps(middle_items, b_vec);
    right_items = _mm512_mul_ps(right_items, c_vec);

    __m512 result = _mm512_add_ps(left_items, middle_items);
    result = _mm512_add_ps(result, right_items);
    _mm512_mask_storeu_ps(&y[i], mask, result);
  } else {
    __m512 left_items = _mm512_mask_i32gather_ps(
        _mm512_setzero_ps(), mask, indices, &x[(i - 1) * stride], sizeof(a));
    __m512 middle_items = _mm512_mask_i32gather_ps(
        _mm512_setzero_ps(), mask, indices, &x[(i)*stride], sizeof(a));
    __m512 right_items = _mm512_mask_i32gather_ps(
        _mm512_setzero_ps(), mask, indices, &x[(i + 1) * stride], sizeof(a));

    left_items = _mm512_mul_ps(left_items, a_vec);
    middle_items = _mm512_mul_ps(middle_items, b_vec);
    right_items = _mm512_mul_ps(right_items, c_vec);

    __m512 result = _mm512_add_ps(left_items, middle_items);
    result = _mm512_add_ps(result, right_items);
    _mm512_mask_i32scatter_ps(&y[i * stride], mask, indices, result, sizeof(a));
  }
}

void kernels_ThreeStencilF64(const double * restrict x,  double * restrict y, double a, double b, double c,
                             size_t len, size_t stride) {
  const size_t VEC_LEN = AVX512_VECTOR_SIZE_BYTES / sizeof(a);
  assert(len > VEC_LEN &&
         "Array Length Must Be Greater than Number of Elements in Vector");
  y[0] = 0.0;
  y[(len - 1) * stride] = 0.0;
  __m512d a_vec = _mm512_set1_pd(a);
  __m512d b_vec = _mm512_set1_pd(b);
  __m512d c_vec = _mm512_set1_pd(c);

  __m256i lanes = _mm256_setr_epi32(0, 1, 2, 3, 4, 5, 6, 7);
  __m256i indices = _mm256_mullo_epi32(lanes, _mm256_set1_epi32(stride));

  size_t i = 1;
  for (; i <= len - VEC_LEN - 1; i += VEC_LEN) {
    if (stride == 1) {
      __m512d left_items = _mm512_loadu_pd(&x[i - 1]);
      __m512d middle_items = _mm512_loadu_pd(&x[i]);
      __m512d right_items = _mm512_loadu_pd(&x[i + 1]);

      left_items = _mm512_mul_pd(left_items, a_vec);
      middle_items = _mm512_mul_pd(middle_items, b_vec);
      right_items = _mm512_mul_pd(right_items, c_vec);

      __m512d result = _mm512_add_pd(left_items, middle_items);
      result = _mm512_add_pd(result, right_items);
      _mm512_storeu_pd(&y[i], result);
    } else {
      __m512d left_items =
          _mm512_i32gather_pd(indices, &x[(i - 1) * stride], sizeof(a));
      __m512d middle_items =
          _mm512_i32gather_pd(indices, &x[i * stride], sizeof(a));
      __m512d right_items =
          _mm512_i32gather_pd(indices, &x[(i + 1) * stride], sizeof(a));

      left_items = _mm512_mul_pd(left_items, a_vec);
      middle_items = _mm512_mul_pd(middle_items, b_vec);
      right_items = _mm512_mul_pd(right_items, c_vec);

      __m512d result = _mm512_add_pd(left_items, middle_items);
      result = _mm512_add_pd(result, right_items);
      _mm512_i32scatter_pd(&y[i * stride], indices, result, sizeof(a));
    }
  }

  // Handle any trailing items in parallel using masking
  size_t remainder = (len - 1) - i;
  if (remainder == 0)
    return;

  __mmask8 mask = (__mmask8)((1 << remainder) - 1);
  if (stride == 1) {
    __m512d left_items = _mm512_maskz_loadu_pd(mask, &x[i - 1]);
    __m512d middle_items = _mm512_maskz_loadu_pd(mask, &x[i]);
    __m512d right_items = _mm512_maskz_loadu_pd(mask, &x[i + 1]);

    left_items = _mm512_mul_pd(left_items, a_vec);
    middle_items = _mm512_mul_pd(middle_items, b_vec);
    right_items = _mm512_mul_pd(right_items, c_vec);

    __m512d result = _mm512_add_pd(left_items, middle_items);
    result = _mm512_add_pd(result, right_items);
    _mm512_mask_storeu_pd(&y[i], mask, result);
  } else {
    __m512d left_items = _mm512_mask_i32gather_pd(
        _mm512_setzero_pd(), mask, indices, &x[(i - 1) * stride], sizeof(a));
    __m512d middle_items = _mm512_mask_i32gather_pd(
        _mm512_setzero_pd(), mask, indices, &x[(i)*stride], sizeof(a));
    __m512d right_items = _mm512_mask_i32gather_pd(
        _mm512_setzero_pd(), mask, indices, &x[(i + 1) * stride], sizeof(a));

    left_items = _mm512_mul_pd(left_items, a_vec);
    middle_items = _mm512_mul_pd(middle_items, b_vec);
    right_items = _mm512_mul_pd(right_items, c_vec);

    __m512d result = _mm512_add_pd(left_items, middle_items);
    result = _mm512_add_pd(result, right_items);
    _mm512_mask_i32scatter_pd(&y[i * stride], mask, indices, result, sizeof(a));
  }
}
#else

/* Force the impl to be inlined into each switch case so `stride` is a
 * compile-time constant there. */
#define KERNEL_INLINE static inline __attribute__((always_inline))

/* Expands to a switch over the strides main.c allows. The default case
 * falls back to the runtime-stride path (scalar, but still correct)
 * rather than silently doing nothing. */
#define DISPATCH_STRIDE(IMPL, STRIDE, ...)                                     \
  switch (STRIDE) {                                                            \
  case 1: IMPL(__VA_ARGS__, 1); break;                                         \
  case 2: IMPL(__VA_ARGS__, 2); break;                                         \
  case 4: IMPL(__VA_ARGS__, 4); break;                                         \
  case 8: IMPL(__VA_ARGS__, 8); break;                                         \
  default: IMPL(__VA_ARGS__, (STRIDE)); break;                                 \
  }

/* ---------------------------- SAXPY ---------------------------- */

#define DEFINE_SAXPY(SUFFIX, T)                                                \
  KERNEL_INLINE void saxpy_impl_##SUFFIX(const T *restrict a,                  \
                                         const T *restrict x, T *restrict y,   \
                                         size_t len, size_t stride) {          \
    for (size_t i = 0; i < len; i++)                                           \
      y[i * stride] += a[i * stride] * x[i * stride];                          \
  }                                                                            \
  void kernels_Saxpy##SUFFIX(const T *restrict a, const T *restrict x,         \
                             T *restrict y, size_t len, size_t stride) {       \
    DISPATCH_STRIDE(saxpy_impl_##SUFFIX, stride, a, x, y, len)                 \
  }

DEFINE_SAXPY(F32, float)
DEFINE_SAXPY(F64, double)

/* --------------------------- MULTIPLY --------------------------- */

#define DEFINE_MULTIPLY(SUFFIX, T)                                             \
  KERNEL_INLINE void multiply_impl_##SUFFIX(const T *restrict x,               \
                                            const T *restrict y,               \
                                            T *restrict z, size_t len,         \
                                            size_t stride) {                   \
    for (size_t i = 0; i < len; i++)                                           \
      z[i * stride] = x[i * stride] * y[i * stride];                           \
  }                                                                            \
  void kernels_Multiply##SUFFIX(const T *restrict x, const T *restrict y,      \
                                T *restrict z, size_t len, size_t stride) {    \
    DISPATCH_STRIDE(multiply_impl_##SUFFIX, stride, x, y, z, len)              \
  }

DEFINE_MULTIPLY(F32, float)
DEFINE_MULTIPLY(F64, double)

/* -------------------------- THREE-POINT STENCIL -------------------------- */

#define DEFINE_STENCIL(SUFFIX, T)                                              \
  KERNEL_INLINE void stencil_impl_##SUFFIX(const T *restrict x, T *restrict y, \
                                           T a, T b, T c, size_t len,          \
                                           size_t stride) {                    \
    for (size_t i = 1; i < len - 1; i++)                                       \
      y[i * stride] = a * x[(i - 1) * stride] + b * x[i * stride] +            \
                      c * x[(i + 1) * stride];                                 \
  }                                                                            \
  void kernels_ThreeStencil##SUFFIX(const T *restrict x, T *restrict y, T a,   \
                                    T b, T c, size_t len, size_t stride) {     \
    if (len == 0)                                                              \
      return;                                                                  \
    y[0] = 0;                                                                  \
    if (len < 2)                                                               \
      return;                                                                  \
    y[(len - 1) * stride] = 0;                                                 \
    DISPATCH_STRIDE(stencil_impl_##SUFFIX, stride, x, y, a, b, c, len)         \
  }

DEFINE_STENCIL(F32, float)
DEFINE_STENCIL(F64, double)

#endif
