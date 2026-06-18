#!/bin/bash
# World Cup 26 — widget launcher (macOS)
# Double-click this file to open the widget in a small, frameless app window.
# (First time: right-click → Open, or run `chmod +x "run-mac.command"` once.)

DIR="$(cd "$(dirname "$0")" && pwd)"
URL="file://$DIR/fifa_widget.html"
PROFILE="$HOME/.wc26-widget"          # dedicated profile → guarantees an app window + remembers size/position

for APP in "Google Chrome" "Microsoft Edge" "Brave Browser" "Chromium"; do
  if [ -d "/Applications/$APP.app" ]; then
    open -na "$APP" --args \
      --app="$URL" \
      --window-size=384,680 \
      --user-data-dir="$PROFILE"
    exit 0
  fi
done

echo "Couldn't find Chrome, Edge, Brave, or Chromium."
echo "Install one, or just open fifa_widget.html in your browser."
read -n1 -r -p "Press any key to close…"
