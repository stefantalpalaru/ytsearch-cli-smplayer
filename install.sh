#!/bin/bash

set -e

echo "📦 Installing ytsearch..."

TMP_DIR=$(mktemp -d)
REPO_URL="https://github.com/bhavesh-7/ytsearch-cli.git"

echo "📥 Cloning repo..."
git clone --depth=1 "$REPO_URL" "$TMP_DIR"

BIN_SRC="$TMP_DIR/bin/ytsearch"
LIB_SRC="$TMP_DIR/lib"

BIN_TARGET="/usr/local/bin/ytsearch"
LIB_TARGET="/usr/local/lib/ytsearch"

echo "🚚 Installing to $BIN_TARGET..."
sudo install -Dm755 "$BIN_SRC" "$BIN_TARGET"

echo "📁 Installing libraries to $LIB_TARGET..."
sudo mkdir -p "$LIB_TARGET"
sudo cp "$LIB_SRC"/*.sh "$LIB_TARGET"

echo "✅ Done. You can now run: ytsearch"
