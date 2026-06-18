#!/usr/bin/env bash
# World Cup 26 — widget launcher (Linux)
# Run:  ./run-linux.sh   (first time: chmod +x run-linux.sh)

DIR="$(cd "$(dirname "$0")" && pwd)"
URL="file://$DIR/fifa_widget.html"
PROFILE="$HOME/.wc26-widget"          # dedicated profile → guarantees an app window + remembers size/position

for B in google-chrome google-chrome-stable chromium chromium-browser microsoft-edge brave-browser; do
  if command -v "$B" >/dev/null 2>&1; then
    "$B" --app="$URL" --window-size=384,680 --user-data-dir="$PROFILE" >/dev/null 2>&1 &
    exit 0
  fi
done

echo "No Chromium-based browser found (chrome/chromium/edge/brave)."
echo "Install one, or just open fifa_widget.html in your browser."
