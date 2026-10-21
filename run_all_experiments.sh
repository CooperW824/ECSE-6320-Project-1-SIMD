#!/usr/bin/env bash
# Usage: sudo ./run_experiments.sh > results.csv
set -u

REPS=1
CORE=2           # pin to this core
PROGS=(serial autovectorized avx512)
OUTS=(float_serial float_auto float_avx512)

if [[ $EUID -ne 0 ]]; then
    echo "warning: not root, nice -n -20 will not take effect" >&2
fi

# run_config <dtype: f32|f64> <bytes per element> <length> <offset> <stride>
run_config() {
    local dt=$1 bytes=$2 len=$3 off=$4 stride=$5
    local i p
    for ((i = 0; i < REPS; i++)); do
        for p in "${!PROGS[@]}"; do
						# echo "$p: $bytes, $len, $off, $stride"
            nice -n -20 taskset -c "$CORE" "./build/experiments/${PROGS[$p]}" \
                "./data/inputs/a_${dt}.floatdata" \
                "./data/inputs/x_${dt}.floatdata" \
                "./data/inputs/y_${dt}.floatdata" \
                "./data/outputs/${OUTS[$p]}" \
                "$bytes" "$len" 1.0 2.0 3.0 "$off" "$stride"
        done
    done
}

echo "Array Length, Stride, Offset, Datatype, Program Name, Median SAXPY Execution (ms), Median MULT Execution (ms), Median Stencil Execution (ms), Min SAXPY Execution (ms), Min MULT Execution (ms), Min Stencil Execution (ms)"

# Experiment 1: Datatype (f32 vs f64, fixed element count)
run_config f32 4 1048576 0 1
run_config f64 8 1048576 0 1

# Experiment 2: Data alignment (offset)
for offset in {0..63}; do
    run_config f32 4 1048576 "$offset" 1
done

# Experiment 3: Stride
strides=(1 2 4 8)
for stride in "${strides[@]}"; do
    run_config f32 4 1048576 0 "$stride"
done

# Experiment 4: Working Set Size Sweep
for size in {11..29}; do
    len=$(awk -v s="$size" 'BEGIN { printf "%d", int(1.9^s / 16) * 16 }')
    run_config f32 4 "$len" 0 1
done

# Experiment 5: Tail Length Performance Measurement
for size in {0..64}; do
    run_config f32 4 $((2**20 + size)) 0 1
done