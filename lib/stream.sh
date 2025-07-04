#!/bin/bash

stream_audio() {
  echo "🎧 Streaming best available audio..."
  stream_url=$(yt-dlp -f 'bestaudio' -g "$1" 2>/dev/null)
  if [[ -z "$stream_url" ]]; then
    echo "❌ Failed to get audio stream URL."
    return 1
  fi
  mpv --no-video "$stream_url"
}

stream_video_with_selection() {
  echo "📺 Fetching available video formats..."
  mapfile -t formats < <(list_video_formats "$1")

  if [[ ${#formats[@]} -eq 0 ]]; then
    echo "❌ No video-only formats found."
    return 1
  fi

  selected=$(printf "%s\n" "${formats[@]}" |
    fzf --height=50% --reverse --prompt="Select video quality: " \
        --preview "echo {}" --border --header-lines=2)

  if [[ "$selected" =~ ^([0-9]+) ]]; then
    format_id="${BASH_REMATCH[1]}"
    echo "⏳ Streaming selected format (ID: $format_id) with best audio..."
    if ! yt-dlp -f "${format_id}+bestaudio" -o - "$1" | mpv -; then
      echo "⚠️  Failed to stream combined video+audio. Trying fallback..."
      fallback_url=$(yt-dlp -f best -g "$1" 2>/dev/null)
      [[ -n "$fallback_url" ]] && mpv "$fallback_url"
    fi
  else
    echo "❌ Invalid format selected."
  fi
}
