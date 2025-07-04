# 🔍 ytsearch

A terminal-based YouTube search and stream tool using `yt-dlp`, `fzf`, and `mpv`.

## 📦 Features

- 🔍 Search YouTube videos from your terminal
- 🎧 Stream audio-only with `bestaudio`
- 📺 Select video quality from a clean table
- 🎛️ Stream selected video+audio format via `mpv`

## 🛠️ Requirements

- `yt-dlp`
- `fzf`
- `mpv`
- `awk`, `bash`, `coreutils`

## 🚀 Installation

```bash
git clone https://github.com/yourname/ytsearch.git
cd ytsearch
chmod +x install.sh
./install.sh
```
## 📈 Usage
```bash
ytsearch "search term"
```
Example:
```bash
ytsearch lofi chill
```
## 📁 Folder Structure
```python
ytsearch/
├── bin/         # Executable
├── lib/         # Internal logic
├── install.sh   # Install helper
├── README.md
└── LICENSE      # License file
```

## License

This project is licensed under the MIT License — see the [LICENSE](./LICENSE) file for details.

Note: This project uses external tools like `yt-dlp`, `fzf`, and `mpv`, which have their own licenses. Make sure to comply with them.
