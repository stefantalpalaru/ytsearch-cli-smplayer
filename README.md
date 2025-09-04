# ytsearch

A terminal-based YouTube search and stream tool using `yt-dlp`, `fzf`, and
`smplayer`. Forked from
[ytsearch-cli](https://github.com/bhavesh-7/ytsearch-cli) in order to move
stream quality selection to [SMPlayer](https://www.smplayer.info/)

## Features

- Search YouTube videos from your terminal
- Stream audio-only with `bestaudio`
- Select video quality from a clean table
- Stream selected video+audio format via `smplayer`

## Requirements

- `yt-dlp`
- `fzf`
- `smplayer`
- `awk`, `bash`, `coreutils`

## Usage
```bash
ytsearch "search term"
```
Example:
```bash
ytsearch lofi chill
```

## License

This project is licensed under the MIT License — see the [LICENSE](./LICENSE) file for details.

Note: This project uses external tools like `yt-dlp`, `fzf`, and `smplayer`, which have their own licenses. Make sure to comply with them.
