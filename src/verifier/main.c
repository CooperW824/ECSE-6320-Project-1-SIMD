/*
 * verifier/main.c
 *
 * Compares two raw binary .floatdata files element-by-element and
 * reports the first element where they differ beyond a tolerance
 * (or confirms they match).
 *
 * Usage:
 *   ./verify_floatdata <file1> <file2> <elem_size:4|8> <n_elements> [rel_epsilon]
 *
 * rel_epsilon defaults to 1e-6 for 4-byte (float) data and 1e-12 for
 * 8-byte (double) data if not given.
 *
 * Comparison rule (relative, with an absolute floor to avoid blowing up
 * near zero):
 *
 *   diff_ok  <=>  |a - b| <= epsilon * max(|a|, |b|, 1.0)
 */

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <errno.h>
#include <math.h>

static double read_elem(const unsigned char *buf, int elem_size) {
    if (elem_size == 4) {
        float v;
        memcpy(&v, buf, sizeof(float));
        return (double)v;
    } else {
        double v;
        memcpy(&v, buf, sizeof(double));
        return v;
    }
}

int main(int argc, char **argv) {
    if (argc != 5 && argc != 6) {
        fprintf(stderr,
                "usage: %s <file1> <file2> <elem_size:4|8> <n_elements> [rel_epsilon]\n",
                argv[0]);
        return 2;
    }

    const char *path1 = argv[1];
    const char *path2 = argv[2];

    char *endptr = NULL;
    long elem_size = strtol(argv[3], &endptr, 10);
    if (*endptr != '\0' || (elem_size != 4 && elem_size != 8)) {
        fprintf(stderr, "elem_size must be 4 or 8, got: %s\n", argv[3]);
        return 2;
    }

    errno = 0;
    unsigned long long n_ull = strtoull(argv[4], &endptr, 10);
    if (errno != 0 || endptr == argv[4] || *endptr != '\0' || n_ull == 0) {
        fprintf(stderr, "invalid element count: %s\n", argv[4]);
        return 2;
    }
    size_t n = (size_t)n_ull;

    double epsilon = (elem_size == 4) ? 1e-6 : 1e-12;
    if (argc == 6) {
        char *eptr = NULL;
        double parsed = strtod(argv[5], &eptr);
        if (eptr == argv[5] || *eptr != '\0' || parsed < 0.0) {
            fprintf(stderr, "invalid epsilon: %s\n", argv[5]);
            return 2;
        }
        epsilon = parsed;
    }

    FILE *f1 = fopen(path1, "rb");
    if (!f1) {
        fprintf(stderr, "failed to open %s: %s\n", path1, strerror(errno));
        return 2;
    }
    FILE *f2 = fopen(path2, "rb");
    if (!f2) {
        fprintf(stderr, "failed to open %s: %s\n", path2, strerror(errno));
        fclose(f1);
        return 2;
    }

    size_t total_bytes = (size_t)elem_size * n;
    unsigned char *buf1 = malloc(total_bytes);
    unsigned char *buf2 = malloc(total_bytes);
    if (!buf1 || !buf2) {
        fprintf(stderr, "malloc failed for %zu bytes\n", total_bytes);
        free(buf1); free(buf2);
        fclose(f1); fclose(f2);
        return 2;
    }

    size_t read1 = fread(buf1, 1, total_bytes, f1);
    size_t read2 = fread(buf2, 1, total_bytes, f2);
    fclose(f1);
    fclose(f2);

    if (read1 != total_bytes) {
        fprintf(stderr, "%s: expected %zu bytes, read %zu (file too short for n=%zu at %ld bytes/elem)\n",
                path1, total_bytes, read1, n, elem_size);
        free(buf1); free(buf2);
        return 2;
    }
    if (read2 != total_bytes) {
        fprintf(stderr, "%s: expected %zu bytes, read %zu (file too short for n=%zu at %ld bytes/elem)\n",
                path2, total_bytes, read2, n, elem_size);
        free(buf1); free(buf2);
        return 2;
    }

    size_t first_diff = (size_t)-1;
    double v1_at_diff = 0.0, v2_at_diff = 0.0, abs_diff_at_diff = 0.0, rel_diff_at_diff = 0.0;
    size_t num_diffs = 0;
    double max_abs_diff = 0.0;

    for (size_t i = 0; i < n; i++) {
        const unsigned char *e1 = buf1 + i * (size_t)elem_size;
        const unsigned char *e2 = buf2 + i * (size_t)elem_size;

        double v1 = read_elem(e1, (int)elem_size);
        double v2 = read_elem(e2, (int)elem_size);

        double abs_diff = fabs(v1 - v2);
        double scale = fmax(fmax(fabs(v1), fabs(v2)), 1.0);
        double rel_diff = abs_diff / scale;

        if (abs_diff > max_abs_diff) max_abs_diff = abs_diff;

        if (rel_diff > epsilon) {
            num_diffs++;
            if (first_diff == (size_t)-1) {
                first_diff = i;
                v1_at_diff = v1;
                v2_at_diff = v2;
                abs_diff_at_diff = abs_diff;
                rel_diff_at_diff = rel_diff;
            }
        }
    }

    free(buf1);
    free(buf2);

    if (first_diff == (size_t)-1) {
        printf("MATCH: %zu elements compared, no differences beyond epsilon=%.3e\n",
               n, epsilon);
        printf("max absolute difference observed: %.3e\n", max_abs_diff);
        return 0;
    } else {
        printf("DIFFER at element %zu (of %zu)\n", first_diff, n);
        printf("  %s value: %.17g\n", path1, v1_at_diff);
        printf("  %s value: %.17g\n", path2, v2_at_diff);
        printf("  absolute diff: %.6e\n", abs_diff_at_diff);
        printf("  relative diff: %.6e (epsilon=%.3e)\n", rel_diff_at_diff, epsilon);
        printf("  total differing elements: %zu / %zu\n", num_diffs, n);
        return 1;
    }
}