# ECSE-6320 Advanced Computer Systems Project 1: SIMD Profiling

Analyzing the performance speedup from introducing SIMD instructions into vector-operations.

## AI Usage Transparency Note

I used the free version of Claude (model: Sonnet 5) to help generate secondary utilities for this project. The primary parts of this project, the kernels, build system and performance analysis infrastructure was written by me. A full list of uses is below.

1. Generated LaTeX template for the report: https://claude.ai/share/2757c2c9-0ce7-42d1-8546-33ad7abf8f7a
2. Generated the code for the random float data generator `./src/data-gen/main.c`: https://claude.ai/share/68a2ba0a-4a17-439e-b7ba-caf666aabab9
3. Generated the verifier for verifying that two data outputs are the same `./src/verifier/main.c`:  https://claude.ai/share/68a2ba0a-4a17-439e-b7ba-caf666aabab9
4. Helped me with understanding the different features of the AVX instruction set: https://claude.ai/share/d8f4d5b0-6c86-444e-be84-7cd45c2d1c63
5. Helped me review my kernel implementations: https://claude.ai/share/2e4bc6ff-4500-42c9-a0de-b693232d2634

## Compilation:

All of the experiments and utilities can be compiled using GNU Make:

	make

This will generate the following executables:
- `build/datagen`: Used to generate random floating point data
- `build/verifier`: Compares two floating point data files and checks for differences between them
- `build/experiments/serial`: The serial computation kernels
- `build/experiments/autovectorized`: The computation kernels but automatically vectorized by the compiler
- `build/experiments/avx512`: The computation kernels built with hand-written AVX512 vectorization

## Usage:

First you must generate the data for the experiments, this is done using the datagen:

	./build/datagen <num_elements> <path/to/output/directory>

Then you can run the experiment(s), each experiment takes the following command line argument values:

- Path to the `A` input float data
- Path to the `X` input float data
- Path to the `Y` input float data
- Path to the output directory
- The element width in bytes (4 for floats, 8 for doubles)
- The number of elements
- The stencil `a` value
- The stencil `b` value
- The stencil `c` value
- The data offset, Optional, default: 0
- The data stride width, Optional, default: 1 (Unit Stride)

		./build/experiments/* <path/to/data/a_file.floatdata> <path/to/data/x_file.floatdata> <path/to/data/y_file.floatdata> <path/to/output/folder> <data width: (4 | 8)> <number of elements> <stencil a> <stencil b> <stencil c> [data offset: default: 0] [stride width: default: 1]

Lastly, to verify the correctness of the output, you can compare the AVX512 implementation to the serial implementation using the verifier tool:

		./build/verifier <path/to/serially/computed/data> <path/to/vectorized/data> <element_size:4|8> <n_elements> [rel_epsilon]

Relative epsilon is the error term for the verifier. This is optional, it is 1e-6 for floats and 1e-9 for doubles.

