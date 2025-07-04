#!/bin/bash

set -e

echo "📦 Installing ytsearch..."

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
BIN_SRC="$SCRIPT_DIR/bin/ytsearch"
LIB_SRC="$SCRIPT_DIR/lib"

BIN_TARGET="/usr/local/bin/ytsearch"
LIB_TARGET="/usr/local/lib/ytsearch"

echo "🚚 Copying to $BIN_TARGET..."
sudo install -Dm755 "$BIN_SRC" "$BIN_TARGET"

echo "📁 Installing libraries to $LIB_TARGET..."
sudo mkdir -p "$LIB_TARGET"
sudo cp "$LIB_SRC"/*.sh "$LIB_TARGET"

echo "✅ Done. You can now run: ytsearch"
