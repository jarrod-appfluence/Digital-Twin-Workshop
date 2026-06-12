#!/usr/bin/env bash
# Appfluence Kit installer — copies every skill folder into ~/.hermes/skills/
set -e
DEST="${HERMES_HOME:-$HOME/.hermes}/skills"
mkdir -p "$DEST"
SRC="$(cd "$(dirname "$0")" && pwd)"
count=0
for d in "$SRC"/*/; do
  name="$(basename "$d")"
  rm -rf "$DEST/$name"
  cp -R "$d" "$DEST/$name"
  count=$((count+1))
done
echo "Appfluence kit installed: $count skill folders → $DEST"
ls "$DEST"
