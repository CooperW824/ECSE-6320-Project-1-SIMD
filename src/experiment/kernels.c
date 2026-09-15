
#include <assert.h>
#include <immintrin.h>
#include <stdint.h>
#include <sys/types.h>
#include <xmmintrin.h>

#define SSE128

#define SSE128_VEC_SIZE 16
#define AVX256_VEC_SIZE 32
#define AVX512_VEC_SIZE 64

#if defined(SSE128)
void kernels_SaxpyF32(float *a, float *x, float *y, uint32_t len) {

  assert(len > SSE128_VEC_SIZE / sizeof(a[0]));

  for (uint32_t i = 0; i < len; i += SSE128_VEC_SIZE / sizeof(a[0])) {
    __m128 y_subvector = _mm_loadu_ps(&y[i]);
    __m128 a_subvector = _mm_loadu_ps(&a[i]);
    __m128 x_subvector = _mm_loadu_ps(&x[i]);

    __m128 saxpy_result = _mm_fmadd_ps(a_subvector, x_subvector, y_subvector);
    _mm_storeu_ps(&y[i], saxpy_result);
  }

  // Final Serial Loop for any remaining items
  for (uint32_t i = len - (len % (SSE128_VEC_SIZE / sizeof(a[0]))); i < len;
       i++) {
    y[i] += a[i] * x[i];
  }
}

void kernels_SaxpyF64(double *a, double *x, double *y, uint32_t len) {

  assert(len > SSE128_VEC_SIZE / sizeof(a[0]));

  for (uint32_t i = 0; i < len; i += SSE128_VEC_SIZE / sizeof((a[0]))) {
    __m128d y_subvector = _mm_loadu_pd(&y[i]);
    __m128d a_subvector = _mm_loadu_pd(&a[i]);
    __m128d x_subvector = _mm_loadu_pd(&x[i]);

    __m128d saxpy_result = _mm_fmadd_pd(a_subvector, x_subvector, y_subvector);
    _mm_storeu_pd(&y[i], saxpy_result);
  }

  // Final Serial Loop for any remaining items
  for (uint32_t i = len - (len % (SSE128_VEC_SIZE / sizeof(a[0]))); i < len;
       i++) {
    y[i] += a[i] * x[i];
  }
}

void kernels_MultiplyF32(float *x, float *y, float *z, uint32_t len) {

  assert(len > SSE128_VEC_SIZE / sizeof(x[0]));

  for (uint32_t i = 0; i < len; i += SSE128_VEC_SIZE / sizeof(x[0])) {
    __m128 x_subvector = _mm_loadu_ps(&x[i]);
    __m128 y_subvector = _mm_loadu_ps(&y[i]);

    __m128 mul_result = _mm_mul_ps(x_subvector, y_subvector);
    _mm_storeu_ps(&z[i], mul_result);
  }

  // Final serial loop for any remaining items

  for (uint32_t i = len - (len % (SSE128_VEC_SIZE / sizeof(x[0]))); i < len;
       i++) {
    z[i] = x[i] * y[i];
  }
}

void kernels_MultiplyF64(double *x, double *y, double *z, uint32_t len) {

  assert(len > SSE128_VEC_SIZE / sizeof(x[0]));

  for (uint32_t i = 0; i < len; i += SSE128_VEC_SIZE / sizeof(x[0])) {
    __m128d x_subvector = _mm_loadu_pd(&x[i]);
    __m128d y_subvector = _mm_loadu_pd(&y[i]);

    __m128d mul_result = _mm_mul_pd(x_subvector, y_subvector);
    _mm_storeu_pd(&z[i], mul_result);
  }

  // Final serial loop for any remaining items

  for (uint32_t i = len - (len % (SSE128_VEC_SIZE / sizeof(x[0]))); i < len;
       i++) {
    z[i] = x[i] * y[i];
  }
}

void kernels_ThreeStencilF32(float *x, float *y, float a, float b, float c,
                             uint32_t len) {

  assert(len > SSE128_VEC_SIZE / sizeof(x[0]));

  y[0] = 0.0f;
  y[len - 1] = 0.0f;
  __m128 a_vec = _mm_set1_ps(a);
  __m128 b_vec = _mm_set1_ps(b);
  __m128 c_vec = _mm_set1_ps(c);
  for (uint32_t i = 1; i < len - (SSE128_VEC_SIZE / sizeof(x[0]));
       i += SSE128_VEC_SIZE / sizeof(x[0])) {
    __m128 left_items = _mm_loadu_ps(&x[i - 1]);
    __m128 middle_items = _mm_loadu_ps(&x[i]);
    __m128 right_items = _mm_loadu_ps(&x[i + 1]);

    left_items = _mm_mul_ps(left_items, a_vec);
    middle_items = _mm_mul_ps(middle_items, b_vec);
    right_items = _mm_mul_ps(right_items, c_vec);

    __m128 result = _mm_add_ps(left_items, middle_items);
    result = _mm_add_ps(result, right_items);

    _mm_storeu_ps(&y[i], result);
  }

  for (uint32_t i = len - (SSE128_VEC_SIZE / sizeof(x[0])); i < len - 1; i++) {
    y[i] = a * x[i - 1] + b * x[i] + c * x[i + 1];
  }
}

void kernels_ThreeStencilF64(double *x, double *y, double a, double b, double c,
                             uint32_t len) {

  assert(len > SSE128_VEC_SIZE / sizeof(x[0]));
															
  y[0] = 0.0f;
  y[len - 1] = 0.0f;
  __m128d a_vec = _mm_set1_pd(a);
  __m128d b_vec = _mm_set1_pd(b);
  __m128d c_vec = _mm_set1_pd(c);
  for (uint32_t i = 1; i < len - (SSE128_VEC_SIZE / sizeof(x[0]));
       i += SSE128_VEC_SIZE / sizeof(x[0])) {
    __m128d left_items = _mm_loadu_pd(&x[i - 1]);
    __m128d middle_items = _mm_loadu_pd(&x[i]);
    __m128d right_items = _mm_loadu_pd(&x[i + 1]);

    left_items = _mm_mul_pd(left_items, a_vec);
    middle_items = _mm_mul_pd(middle_items, b_vec);
    right_items = _mm_mul_pd(right_items, c_vec);

    __m128d result = _mm_add_pd(left_items, middle_items);
    result = _mm_add_pd(result, right_items);

    _mm_storeu_pd(&y[i], result);
  }

  for (uint32_t i = len - (SSE128_VEC_SIZE / sizeof(x[0])); i < len - 1; i++) {
    y[i] = a * x[i - 1] + b * x[i] + c * x[i + 1];
  }
}
#elif defined(AVX256)
void kernels_SaxpyF32(float *a, float *x, float *y, uint32_t len);
void kernels_SaxpyF64(double *a, double *x, double *y, uint32_t len);

void kernels_MultiplyF32(float *x, float *y, float *z, uint32_t len);
void kernels_MultiplyF64(double *x, double *y, double *z, uint32_t len);

void kernels_ThreeStencilF32(float *x, float *y, float a, float b, float c,
                             uint32_t len);
void kernels_ThreeStencilF64(double *x, double *y, double a, double b, double c,
                             uint32_t len);
#elif defined(AVX512)
void kernels_SaxpyF32(float *a, float *x, float *y, uint32_t len);
void kernels_SaxpyF64(double *a, double *x, double *y, uint32_t len);

void kernels_MultiplyF32(float *x, float *y, float *z, uint32_t len);
void kernels_MultiplyF64(double *x, double *y, double *z, uint32_t len);

void kernels_ThreeStencilF32(float *x, float *y, float a, float b, float c,
                             uint32_t len);
void kernels_ThreeStencilF64(double *x, double *y, double a, double b, double c,
                             uint32_t len);
#else
void kernels_SaxpyF32(float *a, float *x, float *y, uint32_t len) {
  for (uint32_t i = 0; i < len; i++) {
    y[i] += a[i] * x[i];
  }
}
void kernels_SaxpyF64(double *a, double *x, double *y, uint32_t len) {
  for (uint32_t i = 0; i < len; i++) {
    y[i] += a[i] * x[i];
  }
}

void kernels_MultiplyF32(float *x, float *y, float *z, uint32_t len) {
  for (uint32_t i = 0; i < len; i++) {
    z[i] = x[i] * y[i];
  }
}
void kernels_MultiplyF64(double *x, double *y, double *z, uint32_t len) {
  for (uint32_t i = 0; i < len; i++) {
    z[i] = x[i] * y[i];
  }
}

void kernels_ThreeStencilF32(float *x, float *y, float a, float b, float c,
                             uint32_t len) {
  y[0] = 0f;
  y[len - 1] = 0f;
  for (uint32_t i = 1; i < len - 1; i++) {
    y[i] = a * x[i - 1] + b * x[i] + c * x[i + 1];
  }
}
void kernels_ThreeStencilF64(double *x, double *y, double a, double b, double c,
                             uint32_t len) {
  y[0] = 0f;
  y[len - 1] = 0f;
  for (uint32_t i = 1; i < len - 1; i++) {
    y[i] = a * x[i - 1] + b * x[i] + c * x[i + 1];
  }
}
#endif
