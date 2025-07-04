#!/bin/bash

echo "🧹 Uninstalling ytsearch..."

BIN="/usr/local/bin/ytsearch"
LIB="/usr/local/lib/ytsearch"

if [[ -f "$BIN" ]]; then
  echo "❌ Removing $BIN"
  sudo rm "$BIN"
fi

if [[ -d "$LIB" ]]; then
  echo "❌ Removing $LIB"
  sudo rm -rf "$LIB"
fi

echo "✅ ytsearch uninstalled successfully."
