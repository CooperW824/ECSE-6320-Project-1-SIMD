#define _GNU_SOURCE
#include <assert.h>
#include <sched.h>
#include <stddef.h>
#include <stdio.h>
#include <unistd.h>

#include "inc/kernels.h"
#include "inc/perf.h"
#include <stdint.h>
#include <stdlib.h>
#include <string.h>

/**
 * @brief Takes an array of num_elements * element_size bytes and offsets the
 *        start by offset bytes and strides elements by stride number of
 * elements.
 *
 * @param input        Array of num_elements floats/doubles, tightly packed.
 * @param output       Buffer of size (num_elements * element_size * stride) +
 * start_offset bytes.
 * @param num_elements Number of floats/doubles in `input`.
 * @param element_size Either 4 (float) or 8 (double).
 * @param start_offset Number of leading bytes in `output` to leave as zero.
 * @param stride       Spacing between successive elements, in units of
 * element_size. Must be 1, 2, 4, or 8
 */
void format_input_data(const char *input, char *output, uint32_t num_elements,
                       uint8_t element_size, uint8_t start_offset,
                       uint8_t stride);

uint8_t run_experiments_as_floats(float *a_data, float *x_data, float *y_data,
                                  uint32_t len, float stencil_a,
                                  float stencil_b, float stencil_c,
                                  uint8_t stride, uint8_t offset,
                                  char *program_name, char *output_dir);

uint8_t run_experiments_as_doubles(double *a_data, double *x_data,
                                   double *y_data, uint32_t len,
                                   double stencil_a, double stencil_b,
                                   double stencil_c, uint8_t stride,
                                   uint8_t offset, char *program_name,
                                   char *output_dir);

int main(int argc, char **argv) {
  if (argc < 10 || argc > 12) {
    fprintf(stderr, "Invalid Number of Parameters\n");
    fprintf(stderr,
            "Usage: %s <path/to/data/a_file.floatdata> "
            "<path/to/data/x_file.floatdata> <path/to/data/y_file.floatdata> "
            "<path/to/output/folder> <data width: (4 | 8)> <number of "
            "elements> <stencil a> <stencil b> <stencil c> [data offset: "
            "default: 0] [stride width: default: 1]",
            argv[0]);

    return 1;
  }

  cpu_set_t mask;
  CPU_ZERO(&mask);

  // Pin to CPU core 0 (change index for other cores)
  CPU_SET(0, &mask);

  // Apply affinity to the current process
  if (sched_setaffinity(0, sizeof(cpu_set_t), &mask) == -1) {
    perror("sched_setaffinity");
    exit(EXIT_FAILURE);
  }

  // Grabbing Inputs and Validating Inputs

  char *a_filename = argv[1];
  char *x_filename = argv[2];
  char *y_filename = argv[3];
  char *output_dir = argv[4];

  FILE *a_file = fopen(a_filename, "r");

  if (a_file == NULL) {
    perror("Issue Opening A file:");
    return 1;
  }

  FILE *x_file = fopen(x_filename, "r");

  if (x_file == NULL) {
    perror("Issue Opening X file:");
    return 1;
  }

  FILE *y_file = fopen(y_filename, "r");

  if (y_file == NULL) {
    perror("Issue Opening Y file:");
    return 1;
  }

  uint8_t data_size;

  if (strcmp(argv[5], "4") == 0) {
    data_size = 4;
  } else if (strcmp(argv[5], "8") == 0) {
    data_size = 8;
  } else {
    fprintf(stderr, "Invalid Data Size \n");
    return 1;
  }

  uint32_t num_elements = strtoul(argv[6], NULL, 10);
  float stencil_a_f = strtof(argv[7], NULL);
  float stencil_b_f = strtof(argv[8], NULL);
  float stencil_c_f = strtof(argv[9], NULL);

  double stencil_a_d = strtod(argv[7], NULL);
  double stencil_b_d = strtod(argv[8], NULL);
  double stencil_c_d = strtod(argv[9], NULL);

  uint8_t data_offset = 0;
  uint8_t stride = 1;
  if (argc >= 11)
    data_offset = (uint8_t)atoi(argv[10]);
  if (argc >= 12)
    stride = (uint8_t)atoi(argv[11]);

  char *raw_a_data = (char *)malloc(num_elements * data_size);

  if (raw_a_data == NULL) {
    perror("Could Not allocate array `raw_a_data`:");
    return 1;
  }

  char *raw_x_data = (char *)malloc(num_elements * data_size);

  if (raw_x_data == NULL) {
    perror("Could Not allocate array `raw_x_data`:");
    return 1;
  }

  char *raw_y_data = (char *)malloc(num_elements * data_size);

  if (raw_y_data == NULL) {
    perror("Could Not allocate array `raw_y_data`:");
    return 1;
  }

  char *formatted_a_data =
      (char *)malloc(num_elements * data_size * stride + data_offset);

  if (formatted_a_data == NULL) {
    perror("Could Not allocate array `formatted_a_data`:");
    return 1;
  }

  char *formatted_x_data =
      (char *)malloc(num_elements * data_size * stride + data_offset);

  if (formatted_x_data == NULL) {
    perror("Could Not allocate array `formatted_x_data`:");
    return 1;
  }

  char *formatted_y_data =
      (char *)malloc(num_elements * data_size * stride + data_offset);

  if (formatted_y_data == NULL) {
    perror("Could Not allocate array `formatted_y_data`:");
    return 1;
  }

  size_t items_read = fread(raw_a_data, data_size, num_elements, a_file);

  if (items_read != num_elements) {
    perror("Read the wrong number of items from the A data file");
    return EXIT_FAILURE;
  }

  items_read = fread(raw_x_data, data_size, num_elements, x_file);

  if (items_read != num_elements) {
    perror("Read the wrong number of items from the X data file");
    return EXIT_FAILURE;
  }

  items_read = fread(raw_y_data, data_size, num_elements, y_file);

  if (items_read != num_elements) {
    perror("Read the wrong number of items from the Y data file");
    return EXIT_FAILURE;
  }

  format_input_data(raw_a_data, formatted_a_data, num_elements, data_size,
                    data_offset, stride);
  format_input_data(raw_x_data, formatted_x_data, num_elements, data_size,
                    data_offset, stride);
  format_input_data(raw_y_data, formatted_y_data, num_elements, data_size,
                    data_offset, stride);

  char *a_data_ptr = formatted_a_data + data_offset;
  char *x_data_ptr = formatted_x_data + data_offset;
  char *y_data_ptr = formatted_y_data + data_offset;

  uint8_t ret_val;

  if (data_size == 4) {
    ret_val = run_experiments_as_floats(
        (float *)a_data_ptr, (float *)x_data_ptr, (float *)y_data_ptr,
        num_elements, stencil_a_f, stencil_b_f, stencil_c_f, stride,
        data_offset, argv[0], output_dir);
  } else {
    ret_val = run_experiments_as_doubles(
        (double *)a_data_ptr, (double *)x_data_ptr, (double *)y_data_ptr,
        num_elements, stencil_a_d, stencil_b_d, stencil_c_d, stride,
        data_offset, argv[0], output_dir);
  }

  free(raw_a_data);
  free(raw_x_data);
  free(raw_y_data);

  free(formatted_a_data);
  free(formatted_x_data);
  free(formatted_y_data);

  fclose(a_file);
  fclose(x_file);
  fclose(y_file);

  return ret_val;
}

void format_input_data(const char *input, char *output, uint32_t num_elements,
                       uint8_t element_size, uint8_t start_offset,
                       uint8_t stride) {
  assert((stride == 1 || stride == 2 || stride == 4 || stride == 8) &&
         "Stride must be 1, 2, 4, or 8");
  /* Total output size per the doc comment */
  uint32_t total_size =
      num_elements * (uint32_t)element_size * (uint32_t)stride +
      (uint32_t)start_offset;

  /* Zero everything first — this covers the leading start_offset bytes
   * as well as any padding gaps introduced by stride > 1. */
  memset(output, 0, total_size);

  for (uint32_t i = 0; i < num_elements; ++i) {
    const char *src = input + (size_t)i * element_size;
    char *dst = output + start_offset + (size_t)i * stride * element_size;
    memcpy(dst, src, element_size);
  }
}

uint8_t run_experiments_as_floats(float *a_data, float *x_data, float *y_data,
                                  uint32_t len, float stencil_a,
                                  float stencil_b, float stencil_c,
                                  uint8_t stride, uint8_t offset,
                                  char *program_name, char *output_dir) {
  char output_filename[4096];
  sprintf(output_filename, "%s/saxpy_output.floatdata", output_dir);
  FILE *saxpy_output = fopen(output_filename, "w");

  if (saxpy_output == NULL) {
    perror("Issue opening SAXPY output file:");
    return 1;
  }

  perf_Timer SAXPY_timer;
  perf_StartTimer(&SAXPY_timer);
  kernels_SaxpyF32(a_data, x_data, y_data, len, stride);
  perf_EndTimer(&SAXPY_timer);
  fwrite(y_data, len * stride, sizeof(float), saxpy_output);
  fclose(saxpy_output);

  sprintf(output_filename, "%s/multiplication_output.floatdata", output_dir);
  FILE *multiplication_output = fopen(output_filename, "w");
  perf_Timer multiplication_timer;
  perf_StartTimer(&multiplication_timer);
  kernels_MultiplyF32(a_data, x_data, y_data, len, stride);
  perf_EndTimer(&multiplication_timer);
  fwrite(y_data, len * stride, sizeof(float), multiplication_output);
  fclose(multiplication_output);

  sprintf(output_filename, "%s/stencil_output.floatdata", output_dir);
  FILE *stencil_output = fopen(output_filename, "w");
  perf_Timer stencil_timer;
  perf_StartTimer(&stencil_timer);
  kernels_ThreeStencilF32(x_data, y_data, stencil_a, stencil_b, stencil_c, len,
                          stride);
  perf_EndTimer(&stencil_timer);
  fwrite(y_data, len * stride, sizeof(float), stencil_output);
  fclose(stencil_output);

  float saxpy_execution = ((float)perf_ComputeNSecDelta(&SAXPY_timer)) / 1e6;
  float multiplication_execution =
      ((float)perf_ComputeNSecDelta(&multiplication_timer)) / 1e6;
  float stencil_execution =
      ((float)perf_ComputeNSecDelta(&stencil_timer)) / 1e6;

  printf("%d, %d, %d, %s, %s, %f, %f, %f\n", len, stride, offset, "float",
         program_name, saxpy_execution, multiplication_execution,
         stencil_execution);

  return 0;
}

uint8_t run_experiments_as_doubles(double *a_data, double *x_data,
                                   double *y_data, uint32_t len,
                                   double stencil_a, double stencil_b,
                                   double stencil_c, uint8_t stride,
                                   uint8_t offset, char *program_name,
                                   char *output_dir) {
  char output_filename[4096];
  sprintf(output_filename, "%s/saxpy_output.floatdata", output_dir);
  FILE *saxpy_output = fopen(output_filename, "w");
  perf_Timer SAXPY_timer;
  perf_StartTimer(&SAXPY_timer);
  kernels_SaxpyF64(a_data, x_data, y_data, len, stride);
  perf_EndTimer(&SAXPY_timer);
  fwrite(y_data, len * stride, sizeof(double), saxpy_output);
  fclose(saxpy_output);

  sprintf(output_filename, "%s/multiplication_output.floatdata", output_dir);
  FILE *multiplication_output = fopen(output_filename, "w");
  perf_Timer multiplication_timer;
  perf_StartTimer(&multiplication_timer);
  kernels_MultiplyF64(a_data, x_data, y_data, len, stride);
  perf_EndTimer(&multiplication_timer);
  fwrite(y_data, len * stride, sizeof(double), multiplication_output);
  fclose(multiplication_output);

  sprintf(output_filename, "%s/stencil_output.floatdata", output_dir);
  FILE *stencil_output = fopen(output_filename, "w");
  perf_Timer stencil_timer;
  perf_StartTimer(&stencil_timer);
  kernels_ThreeStencilF64(x_data, y_data, stencil_a, stencil_b, stencil_c, len,
                          stride);
  perf_EndTimer(&stencil_timer);
  fwrite(y_data, len * stride, sizeof(double), stencil_output);
  fclose(stencil_output);

  float saxpy_execution = ((float)perf_ComputeNSecDelta(&SAXPY_timer)) / 1e6;
  float multiplication_execution =
      ((float)perf_ComputeNSecDelta(&multiplication_timer)) / 1e6;
  float stencil_execution =
      ((float)perf_ComputeNSecDelta(&stencil_timer)) / 1e6;

  printf("%d, %d, %d, %s, %s, %f, %f, %f\n", len, stride, offset, "double",
         program_name, saxpy_execution, multiplication_execution,
         stencil_execution);

  return 0;
}
