#!/bin/bash

list_video_formats() {
  yt-dlp -F "$1" 2>/dev/null | awk '
    BEGIN {
      FS = " +";
      printf "%-6s │ %-4s │ %-9s │ %-4s │ %-10s │ %-7s │ %-6s │ %s\n", "ID", "EXT", "RES", "FPS", "SIZE", "TBR", "PROTO", "VCODEC"
      print "───────────────────────────────────────────────────────────────────────────────────────────────"
    }
    /^[0-9]+/ && /video only/ {
      id=$1; ext=$2; res=$3; fps=$4; size=$5; tbr=$6; proto=$7; vcodec=$(NF)
      printf "%-6s │ %-4s │ %-9s │ %-4s │ %-10s │ %-7s │ %-6s │ %s\n", id, ext, res, fps, size, tbr, proto, vcodec
    }'
}
