echo "Array Length, Stride, Offset, Datatype, Program Name, SAXPY Execution (ms), MULT Execution (ms), Stencil Execution (ms)"

# Experiment 1: Data Size

for i in {0..10}
do
nice -n -20 ./build/experiments/serial ./data/inputs/a_f32.floatdata ./data/inputs/x_f32.floatdata ./data/inputs/y_f32.floatdata ./data/outputs/float_serial 4 1048576 1.0 2.0 3.0 0 1
nice -n -20 ./build/experiments/autovectorized ./data/inputs/a_f32.floatdata ./data/inputs/x_f32.floatdata ./data/inputs/y_f32.floatdata ./data/outputs/float_auto 4 1048576 1.0 2.0 3.0 0 1
nice -n -20 ./build/experiments/avx512 ./data/inputs/a_f32.floatdata ./data/inputs/x_f32.floatdata ./data/inputs/y_f32.floatdata ./data/outputs/float_avx512 4 1048576 1.0 2.0 3.0 0 1
done

for i in {0..10}
do
nice -n -20 ./build/experiments/serial ./data/inputs/a_f64.floatdata ./data/inputs/x_f64.floatdata ./data/inputs/y_f64.floatdata ./data/outputs/float_serial 8 1048576 1.0 2.0 3.0 0 1
nice -n -20 ./build/experiments/autovectorized ./data/inputs/a_f64.floatdata ./data/inputs/x_f64.floatdata ./data/inputs/y_f64.floatdata ./data/outputs/float_auto 8 1048576 1.0 2.0 3.0 0 1
nice -n -20 ./build/experiments/avx512 ./data/inputs/a_f64.floatdata ./data/inputs/x_f64.floatdata ./data/inputs/y_f64.floatdata ./data/outputs/float_avx512 8 1048576 1.0 2.0 3.0 0 1
done

# Experiment 2: Data Alignment

for offset in {0..63}
do
	for i in {0..10}
	do
		nice -n -20 ./build/experiments/serial ./data/inputs/a_f32.floatdata ./data/inputs/x_f32.floatdata ./data/inputs/y_f32.floatdata ./data/outputs/float_serial 4 1048576 1.0 2.0 3.0 $offset 1
		nice -n -20 ./build/experiments/autovectorized ./data/inputs/a_f32.floatdata ./data/inputs/x_f32.floatdata ./data/inputs/y_f32.floatdata ./data/outputs/float_auto 4 1048576 1.0 2.0 3.0 $offset 1
		nice -n -20 ./build/experiments/avx512 ./data/inputs/a_f32.floatdata ./data/inputs/x_f32.floatdata ./data/inputs/y_f32.floatdata ./data/outputs/float_avx512 4 1048576 1.0 2.0 3.0 $offset 1
	done
done

# Experiment 3: Stride
strides=(1 2 4 8)

for stride in $strides
do
	for i in {0..10}
	do
		nice -n -20 ./build/experiments/serial ./data/inputs/a_f32.floatdata ./data/inputs/x_f32.floatdata ./data/inputs/y_f32.floatdata ./data/outputs/float_serial 4 1048576 1.0 2.0 3.0 0 $stride
		nice -n -20 ./build/experiments/autovectorized ./data/inputs/a_f32.floatdata ./data/inputs/x_f32.floatdata ./data/inputs/y_f32.floatdata ./data/outputs/float_auto 4 1048576 1.0 2.0 3.0 0 $stride
		nice -n -20 ./build/experiments/avx512 ./data/inputs/a_f32.floatdata ./data/inputs/x_f32.floatdata ./data/inputs/y_f32.floatdata ./data/outputs/float_avx512 4 1048576 1.0 2.0 3.0 0 $stride
	done
done

# Experiment 4: Working Set Size
sizes=(4096 65536 1048576 16777216)
for size in $sizes
do
	for i in {0..10}
	do
		nice -n -20 ./build/experiments/serial ./data/inputs/a_f32.floatdata ./data/inputs/x_f32.floatdata ./data/inputs/y_f32.floatdata ./data/outputs/float_serial 4 $size 1.0 2.0 3.0 0 1
		nice -n -20 ./build/experiments/autovectorized ./data/inputs/a_f32.floatdata ./data/inputs/x_f32.floatdata ./data/inputs/y_f32.floatdata ./data/outputs/float_auto 4 $size 1.0 2.0 3.0 0 1
		nice -n -20 ./build/experiments/avx512 ./data/inputs/a_f32.floatdata ./data/inputs/x_f32.floatdata ./data/inputs/y_f32.floatdata ./data/outputs/float_avx512 4 $size 1.0 2.0 3.0 0 1
	done
done