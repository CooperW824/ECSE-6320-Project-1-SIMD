#!/usr/bin/env python3
"""Plot SIMD experiment results from the CSV emitted by run_all_experiments.sh.

Usage:
    python3 analysis/plotting.py results/data.csv
    python3 analysis/plotting.py results/data.csv --output-dir figures

Repeated measurements are summarized with their median. The first measurement
for each configuration and implementation is discarded as a warm-up, matching
the experiment runner's documented convention.
"""

import argparse
import csv
import os
import statistics
import sys
from collections import defaultdict

import matplotlib.pyplot as plt


TIME_COLUMNS = {
    "SAXPY": "SAXPY Execution (ms)",
    "Multiply": "MULT Execution (ms)",
    "Stencil": "Stencil Execution (ms)",
}
IMPLEMENTATIONS = ("serial", "autovectorized", "avx512")
COLORS = {"serial": "#555555", "autovectorized": "#2878b5", "avx512": "#e87522"}


def read_results(path):
    """Load and normalize the experiment CSV into dictionaries."""
    required = {
        "Array Length",
        "Stride",
        "Offset",
        "Datatype",
        "Program Name",
        *TIME_COLUMNS.values(),
    }
    rows = []
    try:
        with open(path, newline="", encoding="utf-8-sig") as source:
            reader = csv.DictReader(source, skipinitialspace=True)
            missing = required.difference(reader.fieldnames or [])
            if missing:
                raise ValueError("CSV is missing required column(s): " + ", ".join(sorted(missing)))
            for line_number, row in enumerate(reader, start=2):
                try:
                    program = os.path.basename(row["Program Name"].strip().rstrip("/"))
                    if program not in IMPLEMENTATIONS:
                        continue
                    record = {
                        "length": int(row["Array Length"]),
                        "stride": int(row["Stride"]),
                        "offset": int(row["Offset"]),
                        "datatype": row["Datatype"].strip().lower(),
                        "implementation": program,
                    }
                    for kernel, column in TIME_COLUMNS.items():
                        record[kernel] = float(row[column])
                    rows.append(record)
                except (TypeError, ValueError) as error:
                    raise ValueError(f"Invalid value on CSV line {line_number}: {error}") from error
    except OSError as error:
        raise ValueError(f"Cannot read CSV {path!r}: {error}") from error
    if not rows:
        raise ValueError("No valid experiment rows found in the CSV")
    return rows


def summarize(rows, dimensions):
    """Return medians and sample standard deviations after dropping warm-ups."""
    grouped = defaultdict(list)
    for row in rows:
        key = tuple(row[dimension] for dimension in dimensions) + (row["implementation"],)
        grouped[key].append(row)
    summaries = {}
    for key, samples in grouped.items():
        samples = samples[1:] if len(samples) > 1 else samples
        summaries[key] = {}
        for kernel in TIME_COLUMNS:
            values = [item[kernel] for item in samples]
            summaries[key][kernel] = statistics.median(values)
            summaries[key][f"{kernel}_std"] = statistics.stdev(values) if len(values) > 1 else 0.0
            summaries[key][f"{kernel}_samples"] = values
    return summaries


def find_value(summary, dimensions, values, implementation, kernel):
    key = tuple(values[dimension] for dimension in dimensions) + (implementation,)
    result = summary.get(key)
    return result[kernel] if result else None


def find_std(summary, dimensions, values, implementation, kernel):
    key = tuple(values[dimension] for dimension in dimensions) + (implementation,)
    result = summary.get(key)
    return result[f"{kernel}_std"] if result else None


def speedup_std(summary, dimensions, values, implementation, kernel):
    """Standard deviation of paired scalar/vector timing ratios."""
    if implementation == "serial":
        return 0.0
    impl_key = tuple(values[dimension] for dimension in dimensions) + (implementation,)
    serial_key = tuple(values[dimension] for dimension in dimensions) + ("serial",)
    impl_data, serial_data = summary.get(impl_key), summary.get(serial_key)
    if not impl_data or not serial_data:
        return 0.0
    ratios = [serial / vector for serial, vector in
              zip(serial_data[f"{kernel}_samples"], impl_data[f"{kernel}_samples"])
              if vector > 0]
    return statistics.stdev(ratios) if len(ratios) > 1 else 0.0


def plot_with_std(ax, xs, values, deviations, implementation, label=None):
    """Draw a marker line and its translucent ±1 standard-deviation band."""
    color = COLORS[implementation]
    ax.plot(xs, values, marker="o", label=label or implementation, color=color)
    lower = [max(0.0, value - deviation) for value, deviation in zip(values, deviations)]
    upper = [value + deviation for value, deviation in zip(values, deviations)]
    ax.fill_between(xs, lower, upper, color=color, alpha=0.18, linewidth=0)


def save(fig, output_dir, name):
    fig.tight_layout()
    path = os.path.join(output_dir, name)
    fig.savefig(path, dpi=180, bbox_inches="tight")
    plt.close(fig)
    print(f"Wrote {path}")


def working_set_plots(rows, output_dir):
    summary = summarize(rows, ("length", "stride", "offset", "datatype"))
    configurations = sorted({key[:4] for key in summary
                              if key[1] == 1 and key[2] == 0 and key[3] == "float"
                              and key[0] > 0 and key[0] & (key[0] - 1) == 0})
    if not configurations:
        print("Skipping working-set plots: no unit-stride, zero-offset float size sweep found.")
        return

    fig, axes = plt.subplots(3, 2, figsize=(13, 12))
    for row_index, kernel in enumerate(TIME_COLUMNS):
        ax_time, ax_speed = axes[row_index]
        for impl in IMPLEMENTATIONS:
            xs, ys, time_stds, speedups, speed_stds = [], [], [], [], []
            for length, stride, offset, datatype in configurations:
                config = {"length": length, "stride": stride, "offset": offset, "datatype": datatype}
                timing = find_value(summary, ("length", "stride", "offset", "datatype"), config, impl, kernel)
                baseline = find_value(summary, ("length", "stride", "offset", "datatype"), config, "serial", kernel)
                if timing is not None and baseline is not None and timing > 0:
                    xs.append(length)
                    ys.append(timing)
                    time_stds.append(find_std(summary, ("length", "stride", "offset", "datatype"), config, impl, kernel))
                    speedups.append(baseline / timing)
                    speed_stds.append(speedup_std(summary, ("length", "stride", "offset", "datatype"), config, impl, kernel))
            if xs:
                plot_with_std(ax_time, xs, ys, time_stds, impl)
                plot_with_std(ax_speed, xs, speedups, speed_stds, impl)
                if row_index == 0 and len(speedups) > 1:
                    peak_index = max(range(len(speedups)), key=speedups.__getitem__)
                    compressed = next((index for index in range(peak_index + 1, len(speedups))
                                       if speedups[index] <= 0.85 * speedups[peak_index]), None)
                    if compressed is not None:
                        ax_speed.annotate(
                            "SIMD gain narrows",
                            xy=(xs[compressed], speedups[compressed]),
                            xytext=(8, 12), textcoords="offset points",
                            fontsize=8, color=COLORS[impl],
                            arrowprops={"arrowstyle": "->", "color": COLORS[impl]},
                        )
        for ax in (ax_time, ax_speed):
            ax.set_xscale("log", base=2)
            ax.set_xlabel("Working-set length (elements)")
            ax.grid(True, which="both", alpha=0.25)
        ax_time.set_title(f"{kernel}: execution time")
        ax_time.set_ylabel("Median time (ms)")
        ax_speed.set_title(f"{kernel}: speedup vs. scalar")
        ax_speed.set_ylabel("Speedup (×)")
        ax_speed.axhline(1.0, color="#777777", linewidth=1, linestyle="--")
        ax_time.legend(fontsize="small")
        ax_speed.legend(fontsize="small")
    fig.suptitle("Working-set scaling: unit stride, zero offset, float", fontsize=14)
    save(fig, output_dir, "working_set_scaling.png")

    # Report a directly measurable element processing rate (not estimated FLOP/s
    # or bandwidth), derived from the recorded element count and median time.
    fig, ax = plt.subplots(figsize=(9, 5.5))
    kernel = "SAXPY"
    for impl in IMPLEMENTATIONS:
        xs, rates, rate_stds = [], [], []
        for length, stride, offset, datatype in configurations:
            config = {"length": length, "stride": stride, "offset": offset, "datatype": datatype}
            key = tuple(config[name] for name in ("length", "stride", "offset", "datatype")) + (impl,)
            data = summary.get(key)
            if data:
                xs.append(length)
                samples = [length / (time_ms / 1000.0) / 1e9 for time_ms in data["SAXPY_samples"] if time_ms > 0]
                rates.append(statistics.median(samples))
                rate_stds.append(statistics.stdev(samples) if len(samples) > 1 else 0.0)
        if xs:
            plot_with_std(ax, xs, rates, rate_stds, impl)
    ax.set_xscale("log", base=2)
    ax.set_xlabel("Working-set length (elements)")
    ax.set_ylabel("Element throughput (G elements/s)")
    ax.set_title("SAXPY achieved element throughput")
    ax.grid(True, which="both", alpha=0.25)
    ax.legend()
    save(fig, output_dir, "working_set_throughput.png")


def sweep_plot(rows, output_dir, dimension, select, title, xlabel, filename,
               kernel="SAXPY", datatype="float", stride=1, offset=0,
               relative=False, throughput=False, x_transform=None):
    dimensions = ("length", "stride", "offset", "datatype")
    summary = summarize(rows, dimensions)
    def config_for(x):
        return {"length": x if dimension == "length" else 1_048_576,
                "stride": stride,
                "offset": x if dimension == "offset" else offset,
                "datatype": datatype}

    dimension_index = dimensions.index(dimension)
    fixed = config_for(0)
    x_values = sorted({key[dimension_index] for key in summary
                       if all(key[index] == fixed[name]
                              for index, name in enumerate(dimensions)
                              if name != dimension)
                       and select(key[dimension_index])})
    if not x_values:
        print(f"Skipping {title}: no matching CSV rows found.")
        return

    fig, ax = plt.subplots(figsize=(9, 5.5))
    for impl in IMPLEMENTATIONS:
        xs, ys, deviations = [], [], []
        for x in x_values:
            config = config_for(x)
            timing = find_value(summary, dimensions, config, impl, kernel)
            if timing is None:
                continue
            if relative:
                baseline = find_value(summary, dimensions, config, "serial", kernel)
                if baseline is None or baseline <= 0:
                    continue
                value = baseline / timing
                deviation = speedup_std(summary, dimensions, config, impl, kernel)
            elif throughput:
                key = tuple(config[name] for name in dimensions) + (impl,)
                samples = [config["length"] / (sample / 1000.0) / 1e9
                           for sample in summary[key][f"{kernel}_samples"] if sample > 0]
                value = statistics.median(samples)
                deviation = statistics.stdev(samples) if len(samples) > 1 else 0.0
            else:
                value = timing
                deviation = find_std(summary, dimensions, config, impl, kernel)
            xs.append(x_transform(x) if x_transform else x)
            ys.append(value)
            deviations.append(deviation)
        if xs:
            plot_with_std(ax, xs, ys, deviations, impl)
    ax.set_xlabel(xlabel)
    ax.set_ylabel("Speedup vs. scalar (×)" if relative else
                  "Median time (ms)" if not throughput else "Throughput (G elements/s)")
    ax.set_title(title)
    ax.grid(True, alpha=0.25)
    ax.legend()
    if relative:
        ax.axhline(1.0, color="#777777", linewidth=1, linestyle="--")
    save(fig, output_dir, filename)


def alignment_and_tail_plots(rows, output_dir):
    # In this runner, offset is the initial byte displacement applied to arrays.
    sweep_plot(rows, output_dir, "offset", lambda value: 0 <= value <= 63,
               "Alignment sweep (SAXPY)", "Initial byte offset", "alignment_sweep.png",
               relative=False)
    sweep_plot(rows, output_dir, "offset", lambda value: 0 <= value <= 63,
               "Alignment sweep: speedup vs. scalar (SAXPY)", "Initial byte offset",
               "alignment_speedup.png", relative=True)

    sweep_plot(rows, output_dir, "length", lambda value: (1 << 20) <= value <= (1 << 20) + 64,
               "Tail-length sweep (SAXPY)", "Tail elements after a 1,048,576-element vector",
               "tail_sweep.png", relative=False, x_transform=lambda value: value - (1 << 20))
    sweep_plot(rows, output_dir, "length", lambda value: (1 << 20) <= value <= (1 << 20) + 64,
               "Tail-length sweep: speedup vs. scalar (SAXPY)",
               "Tail elements after a 1,048,576-element vector", "tail_speedup.png",
               relative=True, x_transform=lambda value: value - (1 << 20))


def stride_and_datatype_plots(rows, output_dir):
    stride_summary = summarize(rows, ("length", "stride", "offset", "datatype"))
    strides = sorted({key[1] for key in stride_summary
                      if key[0] == 1_048_576 and key[2] == 0 and key[3] == "float"})
    if strides:
        fig, axes = plt.subplots(1, 2, figsize=(12, 5))
        for impl in IMPLEMENTATIONS:
            timings, time_stds, speedups, speed_stds = [], [], [], []
            valid_strides = []
            for stride in strides:
                config = {"length": 1_048_576, "stride": stride, "offset": 0, "datatype": "float"}
                timing = find_value(stride_summary, ("length", "stride", "offset", "datatype"), config, impl, "SAXPY")
                baseline = find_value(stride_summary, ("length", "stride", "offset", "datatype"), config, "serial", "SAXPY")
                if timing and baseline:
                    valid_strides.append(stride)
                    timings.append(timing)
                    time_stds.append(find_std(stride_summary, ("length", "stride", "offset", "datatype"), config, impl, "SAXPY"))
                    speedups.append(baseline / timing)
                    speed_stds.append(speedup_std(stride_summary, ("length", "stride", "offset", "datatype"), config, impl, "SAXPY"))
            if valid_strides:
                plot_with_std(axes[0], valid_strides, timings, time_stds, impl)
                plot_with_std(axes[1], valid_strides, speedups, speed_stds, impl)
        axes[0].set_ylabel("Median time (ms)")
        axes[0].set_title("SAXPY execution time")
        axes[1].set_ylabel("Speedup vs. scalar (×)")
        axes[1].set_title("SAXPY speedup")
        axes[1].axhline(1.0, color="#777777", linewidth=1, linestyle="--")
        for ax in axes:
            ax.set_xlabel("Stride (elements)")
            ax.set_xticks(strides)
            ax.grid(True, alpha=0.25)
            ax.legend()
        fig.suptitle("Stride sweep: 1,048,576 float elements, zero offset")
        save(fig, output_dir, "stride_sweep.png")
    else:
        print("Skipping stride sweep: no matching CSV rows found.")

    # Fixed-size datatype comparison (1,048,576 elements, unit stride, offset 0).
    summary = stride_summary
    datatypes = [dtype for dtype in ("float", "double")
                 if any(key[0] == 1_048_576 and key[1] == 1 and key[2] == 0 and key[3] == dtype
                        for key in summary)]
    if not datatypes:
        print("Skipping datatype comparison: no matching CSV rows found.")
        return
    fig, axes = plt.subplots(1, len(TIME_COLUMNS), figsize=(14, 5))
    for ax, kernel in zip(axes, TIME_COLUMNS):
        for impl in IMPLEMENTATIONS:
            xs, ys, deviations = [], [], []
            for dtype_index, dtype in enumerate(datatypes):
                config = {"length": 1_048_576, "stride": 1, "offset": 0, "datatype": dtype}
                time = find_value(summary, ("length", "stride", "offset", "datatype"), config, impl, kernel)
                if time is not None:
                    xs.append(dtype_index)
                    ys.append(time)
                    deviations.append(find_std(summary, ("length", "stride", "offset", "datatype"), config, impl, kernel))
            if xs:
                plot_with_std(ax, xs, ys, deviations, impl)
        ax.set_title(kernel)
        ax.set_xticks(range(len(datatypes)), datatypes)
        ax.set_ylabel("Median time (ms)")
        ax.grid(True, alpha=0.25)
        ax.legend(fontsize="small")
    fig.suptitle("Data-type comparison: 1,048,576 elements, unit stride")
    save(fig, output_dir, "datatype_comparison.png")


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("csv_path", help="CSV file produced by run_all_experiments.sh")
    parser.add_argument("-o", "--output-dir", default="analysis/plots",
                        help="directory for PNG figures (default: analysis/plots)")
    args = parser.parse_args()
    try:
        rows = read_results(args.csv_path)
        os.makedirs(args.output_dir, exist_ok=True)
        plt.rcParams.update({"font.size": 10, "axes.titlesize": 11, "figure.titlesize": 14})
        working_set_plots(rows, args.output_dir)
        alignment_and_tail_plots(rows, args.output_dir)
        stride_and_datatype_plots(rows, args.output_dir)
    except (ValueError, OSError) as error:
        print(f"error: {error}", file=sys.stderr)
        return 2
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
