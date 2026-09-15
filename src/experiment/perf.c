#include "inc/perf.h"
#include <bits/time.h>
#include <time.h>

void perf_StartTimer(perf_Timer *timer) {
  struct timespec time;
  clock_gettime(CLOCK_MONOTONIC, &time);
  timer->nsec_start = time.tv_nsec;
}

void perf_EndTimer(perf_Timer *timer) {
  struct timespec time;
  clock_gettime(CLOCK_MONOTONIC, &time);
  timer->nsec_end = time.tv_nsec;
}

uint64_t perf_ComputeNSecDelta(perf_Timer *timer) {
	return timer->nsec_end - timer->nsec_start;
}
