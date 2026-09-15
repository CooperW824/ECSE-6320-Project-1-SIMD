#ifndef KERNELS_H
#define KERNELS_H

#include <stdint.h>

void kernels_SaxpyF32(float * a, float * x, float * y, uint32_t len);
void kernels_SaxpyF64(double * a, double * x, double * y, uint32_t len);

void kernels_MultiplyF32(float * x, float * y, float * z, uint32_t len);
void kernels_MultiplyF64(double * x, double * y, double * z, uint32_t len);

void kernels_ThreeStencilF32(float * x, float * y, float a, float b, float c, uint32_t len);
void kernels_ThreeStencilF64(double * x, double * y, double a, double b, double c, uint32_t len);



#endif /* KERNELS_H */
