#!/bin/bash
# World Cup 26 — widget launcher (macOS)
#
# Double-click to open the widget in a small, frameless app window.
#
# Heads-up: unzipping on a Mac strips the "executable" flag, so the FIRST launch
# can't be a double-click (a file that isn't marked runnable can't fix itself —
# that's why no password prompt can help here). Do ONE of these ONCE, and every
# double-click afterward just works:
#     bash <space>   then drag this file into Terminal, press Return
#   — or —
#     chmod +x <space>   then drag this file in, press Return
# On that first run this script re-marks itself executable, so it's one-and-done.

DIR="$(cd "$(dirname "$0")" && pwd)"
chmod +x "$0" 2>/dev/null || true        # self-heal → future double-clicks just work
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

