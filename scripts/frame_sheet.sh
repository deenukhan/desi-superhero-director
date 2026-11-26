#!/usr/bin/env bash
# Make a QA contact sheet of a generated clip: 2 frames per second, 5 per row.
# usage: frame_sheet.sh clip.mp4 [out.jpg]
set -euo pipefail
in="$1"; out="${2:-${in%.*}_frames.jpg}"
dur=$(ffprobe -v error -show_entries format=duration -of csv=p=0 "$in")
n=$(python3 -c "import math;print(max(1,math.ceil(float('$dur')*2)))")
rows=$(( (n + 4) / 5 ))
ffmpeg -v error -y -i "$in" -vf "fps=2,scale=320:-1,tile=5x${rows}" -frames:v 1 "$out"
echo "$out  (${dur}s, ${n} frames; read left→right, top→bottom, 0.5 s apart)"
