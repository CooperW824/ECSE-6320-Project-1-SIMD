# ECSE-6320 Advanced Computer Systems Project 1: SIMD Profiling

Analyzing the performance speedup from introducing SIMD instructions into vector-operations.

## AI Usage Transparency Note

I used the free version of Claude (model: Sonnet 5) to help generate secondary utilities for this project. The primary parts of this project, the kernels, build system and performance analysis infrastructure was written by me. A full list of uses is below.

1. Generated LaTeX template for the report: https://claude.ai/share/2757c2c9-0ce7-42d1-8546-33ad7abf8f7a
2. Generated the code for the random float data generator `./src/data-gen/main.c`: https://claude.ai/share/68a2ba0a-4a17-439e-b7ba-caf666aabab9
3. Generated the verifier for verifying that two data outputs are the same `./src/verifier/main.c`:  https://claude.ai/share/68a2ba0a-4a17-439e-b7ba-caf666aabab9


