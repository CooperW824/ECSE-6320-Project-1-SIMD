CC := gcc-16
# TODO: Change to O2 and remove -g after correctness checks
CFLAGS := -O2 -march=native -lm -fopt-info-vec-optimized

all: build build/datagen build/verifier build/experiments/serial build/experiments/autovectorized build/experiments/avx512

build: 	
	mkdir build
	mkdir build/experiments

clean: 
	rm -rf build
	mkdir build
	mkdir build/experiments

build/datagen: src/data-gen/main.c
	$(CC) ${CFLAGS} $^ -o $@

build/verifier: src/verifier/main.c
	$(CC) ${CFLAGS} $^ -o $@

build/experiments/serial: src/experiment/main.c src/experiment/kernels.c src/experiment/perf.c 
	$(CC) ${CFLAGS} -fno-tree-vectorize -fno-tree-slp-vectorize -ffp-contract=off $^ -o $@

build/experiments/autovectorized: src/experiment/main.c src/experiment/kernels.c src/experiment/perf.c 
	$(CC) ${CFLAGS} -ftree-vectorize $^ -o $@

build/experiments/avx512: src/experiment/main.c src/experiment/kernels.c src/experiment/perf.c 
	$(CC) ${CFLAGS} -DVECTOR $^ -o $@

