#!/usr/bin/env python3
"""Generate performance plots from results/data.csv."""

from __future__ import annotations

import csv
import statistics
from collections import defaultdict
from pathlib import Path

import matplotlib.pyplot as plt


ROOT = Path(__file__).resolve().parent.parent
CSV_PATH = ROOT / "results" / "data.csv"
OUTPUT_DIR = Path(__file__).resolve().parent / "plots"
FIXED_LENGTH = 1_048_576

KERNELS = {
    "SAXPY": "Median SAXPY Execution (ms)",
    "Vector Multiplication": "Median MULT Execution (ms)",
    "Stencil": "Median Stencil Execution (ms)",
}
IMPLEMENTATIONS = {
    "serial": "Serial",
    "autovectorized": "Auto-vectorized",
    "avx512": "AVX-512",
}
COLORS = {"Serial": "#4C78A8", "Auto-vectorized": "#F58518", "AVX-512": "#54A24B"}


def load_rows() -> list[dict[str, object]]:
    """Load the CSV and normalize its padded column names and values."""
    with CSV_PATH.open(newline="", encoding="utf-8") as csv_file:
        reader = csv.DictReader(csv_file, skipinitialspace=True)
        rows = []
        for raw_row in reader:
            row = {key.strip(): value.strip() for key, value in raw_row.items() if key}
            rows.append(
                {
                    "length": int(row["Array Length"]),
                    "stride": int(row["Stride"]),
                    "offset": int(row["Offset"]),
                    "datatype": row["Datatype"].lower(),
                    "program": Path(row["Program Name"]).name,
                    **{
                        KERNELS[kernel]: float(row[column])
                        for kernel, column in KERNELS.items()
                    },
                }
            )
    if not rows:
        raise ValueError(f"No data rows found in {CSV_PATH}")
    return rows


def median_time(rows: list[dict[str, object]], kernel: str) -> float:
    """Return the median CSV-reported time, combining repeated configurations."""
    return statistics.median(float(row[kernel]) for row in rows)


def collapse_measurements(
    rows: list[dict[str, object]], varying_key: str, fixed_filters: dict[str, object]
) -> dict[tuple[object, str], list[dict[str, object]]]:
    grouped: dict[tuple[object, str], list[dict[str, object]]] = defaultdict(list)
    for row in rows:
        if all(row[key] == value for key, value in fixed_filters.items()):
            grouped[(row[varying_key], str(row["program"]))].append(row)
    return grouped


def plot_sweep(
    rows: list[dict[str, object]],
    *,
    name: str,
    varying_key: str,
    xlabel: str,
    fixed_filters: dict[str, object],
    log_x: bool = False,
) -> None:
    groups = collapse_measurements(rows, varying_key, fixed_filters)
    values = sorted({key[0] for key in groups})
    if not values:
        raise ValueError(f"No data found for {name} sweep")

    fig, axes = plt.subplots(3, 2, figsize=(13, 12), sharex="col")
    for row_index, (kernel_name, kernel_column) in enumerate(KERNELS.items()):
        time_axis, speedup_axis = axes[row_index]
        for program, label in IMPLEMENTATIONS.items():
            medians: list[float] = []
            speedups: list[float] = []
            xs: list[object] = []
            for value in values:
                serial_rows = groups.get((value, "serial"), [])
                implementation_rows = groups.get((value, program), [])
                if not serial_rows or not implementation_rows:
                    continue
                serial_ms = median_time(serial_rows, kernel_column)
                implementation_ms = median_time(implementation_rows, kernel_column)
                xs.append(value)
                medians.append(implementation_ms)
                speedups.append(serial_ms / implementation_ms)

            color = COLORS[label]
            time_axis.plot(xs, medians, marker="o", markersize=3.5, label=label, color=color)
            speedup_axis.plot(xs, speedups, marker="o", markersize=3.5, label=label, color=color)

        time_axis.set_title(kernel_name)
        time_axis.set_ylabel("Median execution time (ms)")
        speedup_axis.set_ylabel("Speedup vs. serial")
        speedup_axis.axhline(1.0, color="#777777", linewidth=0.9, linestyle="--")
        for axis in (time_axis, speedup_axis):
            axis.grid(True, alpha=0.25)
            axis.legend(fontsize="small")
            if log_x:
                axis.set_xscale("log")

    axes[-1, 0].set_xlabel(xlabel)
    axes[-1, 1].set_xlabel(xlabel)
    fig.suptitle(f"{name}: median execution time and speedup", fontsize=15)
    fig.tight_layout(rect=(0, 0, 1, 0.97))
    fig.savefig(OUTPUT_DIR / f"{name.lower().replace(' ', '_')}.png", dpi=180)
    plt.close(fig)


def plot_datatype_comparison(rows: list[dict[str, object]]) -> None:
    base_rows = [
        row
        for row in rows
        if row["length"] == FIXED_LENGTH and row["offset"] == 0 and row["stride"] == 1
    ]
    grouped: dict[tuple[str, str, str], list[dict[str, object]]] = defaultdict(list)
    for row in base_rows:
        grouped[(str(row["datatype"]), str(row["program"]), "")].append(row)
    if not grouped:
        raise ValueError("No fixed-size float/double measurements found")

    fig, axes = plt.subplots(1, 3, figsize=(15, 5), sharey=True)
    datatypes = ["float", "double"]
    programs = list(IMPLEMENTATIONS)
    positions = list(range(len(datatypes)))
    width = 0.24

    for axis, (kernel_name, kernel_column) in zip(axes, KERNELS.items()):
        for program_index, program in enumerate(programs):
            label = IMPLEMENTATIONS[program]
            offsets = [position + (program_index - 1) * width for position in positions]
            medians = []
            for datatype in datatypes:
                matches = grouped.get((datatype, program, ""), [])
                medians.append(median_time(matches, kernel_column) if matches else 0.0)
            axis.bar(offsets, medians, width, label=label, color=COLORS[label])
        axis.set_title(kernel_name)
        axis.set_xticks(positions, ["Float", "Double"])
        axis.grid(axis="y", alpha=0.25)
        axis.set_ylabel("Median execution time (ms)")

    axes[0].legend(fontsize="small")
    fig.suptitle(f"Datatype comparison ({FIXED_LENGTH:,} elements; offset 0, stride 1)")
    fig.tight_layout(rect=(0, 0, 1, 0.93))
    fig.savefig(OUTPUT_DIR / "datatype_comparison.png", dpi=180)
    plt.close(fig)


def get_working_set_groups(
    rows: list[dict[str, object]],
) -> dict[tuple[int, str], list[dict[str, object]]]:
    # Only the float working-set sweep is used. Exclude tail-length experiments,
    # alignment/stride sweeps, and the fixed-size datatype/alignment runs.
    working_set_rows = [
        row
        for row in rows
        if row["datatype"] == "float"
        and row["offset"] == 0
        and row["stride"] == 1
        and (row["length"] < FIXED_LENGTH or row["length"] > FIXED_LENGTH + 64)
    ]
    groups: dict[tuple[int, str], list[dict[str, object]]] = defaultdict(list)
    for row in working_set_rows:
        groups[(int(row["length"]), str(row["program"]))].append(row)
    if not groups:
        raise ValueError("No float working-set measurements found")
    return groups


def plot_bandwidth_working_set(rows: list[dict[str, object]]) -> None:
    groups = get_working_set_groups(rows)
    work = {
        "SAXPY": (2.0, 16.0),
        "Vector Multiplication": (1.0, 12.0),
        "Stencil": (5.0, 8.0),
    }
    lengths = sorted({length for length, _program in groups})
    fig, axes = plt.subplots(1, 3, figsize=(15, 5), sharex=True)
    for axis, (kernel_name, kernel_column) in zip(axes, KERNELS.items()):
        _flops_per_element, bytes_per_element = work[kernel_name]
        for program, label in IMPLEMENTATIONS.items():
            x_values: list[int] = []
            bandwidth_values: list[float] = []
            for length in lengths:
                measurements = groups.get((length, program), [])
                if not measurements:
                    continue
                elapsed_seconds = median_time(measurements, kernel_column) / 1000.0
                bandwidth_gb_s = bytes_per_element * length / elapsed_seconds / 1e9
                x_values.append(length)
                bandwidth_values.append(bandwidth_gb_s)
            axis.plot(
                x_values,
                bandwidth_values,
                marker="o",
                markersize=3.5,
                color=COLORS[label],
                label=label,
            )
        axis.set_title(kernel_name)
        axis.set_xlabel("Working set size (elements)")
        axis.set_xscale("log")
        axis.grid(True, which="both", alpha=0.25)
        axis.legend(fontsize="small")
    axes[0].set_ylabel("Memory bandwidth (GB/s)")
    fig.suptitle("Memory bandwidth vs. working-set size (float)")
    fig.tight_layout(rect=(0, 0, 1, 0.93))
    fig.savefig(OUTPUT_DIR / "bandwidth_vs_working_set.png", dpi=180)
    plt.close(fig)


def plot_bandwidth_performance(rows: list[dict[str, object]]) -> None:
    groups = get_working_set_groups(rows)
    work = {
        "SAXPY": (2.0, 16.0),
        "Vector Multiplication": (1.0, 12.0),
        "Stencil": (5.0, 8.0),
    }
    fig, axis = plt.subplots(figsize=(9, 6))
    markers = {"SAXPY": "o", "Vector Multiplication": "s", "Stencil": "^"}
    for kernel_name, kernel_column in KERNELS.items():
        flops_per_element, bytes_per_element = work[kernel_name]
        for program, label in IMPLEMENTATIONS.items():
            x_values: list[float] = []
            y_values: list[float] = []
            for (length, point_program), measurements in sorted(groups.items()):
                if point_program != program:
                    continue
                elapsed_seconds = median_time(measurements, kernel_column) / 1000.0
                gflops = flops_per_element * length / elapsed_seconds / 1e9
                bandwidth_gb_s = bytes_per_element * length / elapsed_seconds / 1e9
                x_values.append(bandwidth_gb_s)
                y_values.append(gflops)
            axis.scatter(
                x_values,
                y_values,
                color=COLORS[label],
                marker=markers[kernel_name],
                alpha=0.8,
                s=42,
                label=f"{kernel_name} — {label}",
            )

    axis.set_xscale("log")
    axis.set_yscale("log")
    axis.set_xlabel("Memory bandwidth (GB/s)")
    axis.set_ylabel("Performance (GFLOP/s)")
    axis.set_title("Float working-set performance vs. memory bandwidth")
    axis.grid(True, which="both", alpha=0.25)
    axis.legend(fontsize="small", ncol=2)
    fig.tight_layout()
    fig.savefig(OUTPUT_DIR / "bandwidth_vs_gflops.png", dpi=180)
    plt.close(fig)


def plot_roofline(rows: list[dict[str, object]]) -> None:
    groups = get_working_set_groups(rows)
    # FLOPs/element and bytes/element used by both performance models.
    work = {
        "SAXPY": (2.0, 16.0),
        "Vector Multiplication": (1.0, 12.0),
        "Stencil": (5.0, 8.0),
    }
    fig, axis = plt.subplots(figsize=(9, 6))
    markers = {"SAXPY": "o", "Vector Multiplication": "s", "Stencil": "^"}
    for kernel_name, kernel_column in KERNELS.items():
        flops_per_element, bytes_per_element = work[kernel_name]
        arithmetic_intensity = flops_per_element / bytes_per_element
        for program, label in IMPLEMENTATIONS.items():
            y_values: list[float] = []
            for (length, point_program), measurements in sorted(groups.items()):
                if point_program != program:
                    continue
                elapsed_seconds = median_time(measurements, kernel_column) / 1000.0
                y_values.append(flops_per_element * length / elapsed_seconds / 1e9)
            axis.scatter(
                [arithmetic_intensity] * len(y_values),
                y_values,
                color=COLORS[label],
                marker=markers[kernel_name],
                alpha=0.8,
                s=42,
                label=f"{kernel_name} — {label}",
            )

    axis.set_xscale("log")
    axis.set_yscale("log")
    axis.set_xlabel("Arithmetic intensity (FLOP/byte)")
    axis.set_ylabel("Performance (GFLOP/s)")
    axis.set_title("Roofline: performance vs. arithmetic intensity (float)")
    axis.grid(True, which="both", alpha=0.25)
    axis.legend(fontsize="small", ncol=2)
    fig.tight_layout()
    fig.savefig(OUTPUT_DIR / "roofline.png", dpi=180)
    plt.close(fig)


def main() -> None:
    OUTPUT_DIR.mkdir(parents=True, exist_ok=True)
    rows = load_rows()
    working_set_rows = [
        row
        for row in rows
        if row["length"] == FIXED_LENGTH or row["length"] < FIXED_LENGTH or row["length"] > FIXED_LENGTH + 64
    ]

    plot_sweep(
        working_set_rows,
        name="Working Set Size",
        varying_key="length",
        xlabel="Working set size (elements)",
        fixed_filters={"datatype": "float", "offset": 0, "stride": 1},
        log_x=True,
    )
    plot_sweep(
        rows,
        name="Data Alignment",
        varying_key="offset",
        xlabel="Data offset (bytes)",
        fixed_filters={"datatype": "float", "length": FIXED_LENGTH, "stride": 1},
    )
    plot_sweep(
        rows,
        name="Tail Elements",
        varying_key="length",
        xlabel="Tail elements beyond 1,048,576",
        fixed_filters={"datatype": "float", "offset": 0, "stride": 1},
    )
    # Convert array lengths to the actual tail count for the x-axis.
    tail_rows = [
        {**row, "tail": int(row["length"]) - FIXED_LENGTH}
        for row in rows
        if FIXED_LENGTH <= row["length"] <= FIXED_LENGTH + 64
    ]
    plot_sweep(
        tail_rows,
        name="Tail Elements",
        varying_key="tail",
        xlabel="Tail elements beyond 1,048,576",
        fixed_filters={"datatype": "float", "offset": 0, "stride": 1},
    )
    plot_sweep(
        rows,
        name="Data Stride",
        varying_key="stride",
        xlabel="Data stride (elements)",
        fixed_filters={"datatype": "float", "length": FIXED_LENGTH, "offset": 0},
    )
    plot_datatype_comparison(rows)
    plot_bandwidth_working_set(rows)
    plot_bandwidth_performance(rows)
    plot_roofline(rows)
    print(f"Saved plots to {OUTPUT_DIR}")


if __name__ == "__main__":
    main()
