# ECSE-6320 Advanced Computer Systems Project 1: SIMD Profiling

Analyzing the performance speedup from introducing SIMD instructions into vector-operations.

## Computer Target:

This code was written targeting Linux 7.0.11, running on an x86_64 AMD Ryzen 7 350 processor. Running this code on
a different computer may result in the code either not compiling, not running, or crashing during execution. 

## Results, Analysis, and Conclusions:

All of my methodologies, results, analysis, and conclusions can be found in:

		./report/report.pdf

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

### Data Generation
First you must generate the data for the experiments, this is done using the datagen:

	./build/datagen <num_elements> <path/to/output/directory>


### Experiment Single Shot

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

### Result Verification Between Serial and AVX512

Lastly, to verify the correctness of the output, you can compare the AVX512 implementation to the serial implementation using the verifier tool:

		./build/verifier <path/to/serially/computed/data> <path/to/vectorized/data> <element_size:4|8> <n_elements> [rel_epsilon]

Relative epsilon is the error term for the verifier. This is optional, the default is 1e-6 for floats and 1e-9 for doubles.

### Running all experiments.

To run all experiments:

		chmod +x ./run_all_experiments.sh
		sudo ./run_all_experiments.sh

You don't necessarily have to run the script with `sudo`, running without `sudo` prevents the script from setting the niceness of the program which may 
mean that programs get preempted out of execution during the experiment which may impact results.

