#!/usr/bin/env bash
# Join clips in order into one video, re-encoded to a common format, loudness -14 LUFS.
# usage: join_clips.sh out.mp4 clip1.mp4 clip2.mp4 ...   [env: W=1920 H=1080 FPS=24 MUTE=1 to drop clip audio]
set -euo pipefail
out="$1"; shift
W="${W:-1920}"; H="${H:-1080}"; FPS="${FPS:-24}"
args=(); filt=""; i=0
for c in "$@"; do
  args+=(-i "$c")
  filt+="[$i:v]scale=${W}:${H}:force_original_aspect_ratio=decrease,pad=${W}:${H}:(ow-iw)/2:(oh-ih)/2,setsar=1,fps=${FPS}[v$i];"
  if ffprobe -v error -select_streams a -show_entries stream=index -of csv=p=0 "$c" | grep -q .; then
    filt+="[$i:a]aresample=48000,aformat=channel_layouts=stereo[a$i];"
  else
    d=$(ffprobe -v error -show_entries format=duration -of csv=p=0 "$c")
    filt+="anullsrc=r=48000:cl=stereo,atrim=0:${d}[a$i];"
  fi
  i=$((i+1))
done
cat=""; for ((k=0;k<i;k++)); do cat+="[v$k][a$k]"; done
filt+="${cat}concat=n=${i}:v=1:a=1[v][a];[a]loudnorm=I=-14:TP=-1.5[ao]"
if [ "${MUTE:-0}" = "1" ]; then
  ffmpeg -v error -y "${args[@]}" -filter_complex "$filt" -map "[v]" -an -c:v libx264 -crf 18 -preset medium -pix_fmt yuv420p "$out"
else
  ffmpeg -v error -y "${args[@]}" -filter_complex "$filt" -map "[v]" -map "[ao]" -c:v libx264 -crf 18 -preset medium -pix_fmt yuv420p -c:a aac -b:a 192k "$out"
fi
echo "joined $i clips → $out ($(ffprobe -v error -show_entries format=duration -of csv=p=0 "$out")s)"
