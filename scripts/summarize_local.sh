#!/usr/bin/env bash
set -euo pipefail
out=experiments/summary_local.csv
echo "scenario,requests_per_sec,avg_latency_ms" > "$out"
parse(){ f="$1"; s="$2"; rps=$(awk '/Requests\/sec:/{print $2}' "$f"); lat=$(awk '/Latency/{print $2; exit}' "$f"|sed 's/ms//;s/s//'); echo "$s,$rps,$lat" >> "$out"; }
parse experiments/baseline/wrk_t2c50_30s.txt baseline
parse experiments/pod_crash/wrk_t2c50_30s.txt pod_crash
parse experiments/resource_stress/wrk.txt resource_stress
parse experiments/netem/wrk_delay200ms_loss1pct.txt netem
echo "Wrote $out"
