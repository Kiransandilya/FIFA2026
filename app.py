#!/usr/bin/env python3
"""
World Cup 26 - Matchday  ·  native window launcher
==================================================

Opens the widget (fifa_widget.html) in a small, FRAMELESS, RESIZABLE desktop window
using your operating system's built-in web view - no browser, no tabs, no
address bar, no installation of a browser engine.

ONE-TIME SETUP
--------------
    pip install pywebview

(That's the only dependency. On most Macs and Windows 10/11 machines the web
 view engine is already present. On Linux you may also need the system WebKit
 package, e.g.  sudo apt install gir1.2-webkit2-4.1  - or  pip install "pywebview[qt]".)

RUN IT
------
    python app.py

Keep fifa_widget.html in the SAME FOLDER as this file. Drag the window by its header,
resize it from any edge, and use the - / x buttons in the header to minimize or
close. Your focus choice (team or city) is remembered between launches.
"""

import os
import sys

HERE = os.path.dirname(os.path.abspath(__file__))
INDEX = os.path.join(HERE, "fifa_widget.html")

WIDTH, HEIGHT = 380, 660            # starting size - resize freely once it's open
MIN_W, MIN_H = 330, 430


def fail(msg):
    print("\n" + msg + "\n")
    sys.exit(1)


def main():
    try:
        import webview
    except ImportError:
        fail("pywebview isn't installed yet. Run:\n\n    pip install pywebview\n\n"
             "then start the app again with:  python app.py")

    if not os.path.exists(INDEX):
        fail("Couldn't find fifa_widget.html next to app.py.\n"
             "Put both files in the same folder, then run:  python app.py")

    class Api:
        """Tiny bridge so the in-window buttons can drive the OS window."""
        def close(self):
            for w in list(webview.windows):
                w.destroy()
        def minimize(self):
            if webview.windows:
                webview.windows[0].minimize()

    webview.create_window(
        "World Cup 26",
        INDEX,
        js_api=Api(),
        width=WIDTH, height=HEIGHT,
        min_size=(MIN_W, MIN_H),
        resizable=True,
        frameless=True,        # no OS title bar / chrome
        easy_drag=True,        # drag the window from anywhere (header has a grab cursor)
        on_top=False,          # set True to pin it above other windows
        background_color="#101512",
    )
    webview.start()


if __name__ == "__main__":
    main()
