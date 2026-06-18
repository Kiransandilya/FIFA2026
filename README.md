# World Cup 2026 · Matchday

A tiny desktop widget for the 2026 FIFA World Cup. Today's matches with **live scores**, plus the **full schedule** for your favorite team or host city — in a small window that sits in the corner of your screen.

<table>
  <tr>
    <td align="center" width="33%"><img src="screenshots/01-overview.png" width="240"><br><sub><b>Today + your favorite</b></sub></td>
    <td align="center" width="33%"><img src="screenshots/02-live.png" width="240"><br><sub><b>Live match — pitch + GOAL!</b></sub></td>
    <td align="center" width="33%"><img src="screenshots/03-picker.png" width="240"><br><sub><b>Pick a city or team</b></sub></td>
  </tr>
</table>

## Open it as a little window

Double-click the launcher for your system. It opens in a clean, frameless app window — no tabs, no address bar. **Keep all the files together in one folder.**

| System | Double-click | First time |
|---|---|---|
| **Windows** | `run-windows.bat` | — |
| **macOS** | `run-mac.command` | right-click → **Open** |
| **Linux** | `run-linux.sh` | `chmod +x run-linux.sh`, then `./run-linux.sh` |

Needs Chrome, Edge, Brave, or Chromium installed. Nothing to set up.

*Other ways:* run `python app.py` for a fully frameless window (`pip install pywebview` once), or just open `fifa_widget.html` in any browser — or host it free on GitHub Pages.

## What you're looking at

- **Top — Today.** Every World Cup match happening today (U.S. Eastern), with a kickoff time, a **live score + minute** in red, or the **final score**.
- **Bottom — Your favorite.** The full schedule for the team or host city you've chosen — played matches with scores, upcoming ones with dates and venue.
- **When a match is live** it jumps to a **big panel up top** — big flags, full country names, the score, and **who scored (penalties marked)** — over a little pitch where both teams' players push toward the goals. The crowd gives a **roar when someone scores**; sound is **on by default** (it starts on your first click), and **♪** mutes it.
- **Tap the ★ chip** to switch your favorite — any of the 16 host cities or any team. Your choice is remembered next time.
- The whole board is a **football pitch** with **goalposts top and bottom**; when nothing is live there are no players, just the pitch. **☾ / ☀** follows your system theme (or flip it manually); **↻** forces a refresh.

## Good to know

- Scores come from **ESPN's public World Cup feed** (it carries live scorers and penalties), with **TheSportsDB as an automatic backup**, and the widget re-tries on its own if a fetch fails. Boston's schedule is built in, so something always shows even offline.
- Times are **U.S. Eastern**. Flags from flagcdn.com.
- Change the window size with `--window-size` in the launcher. Change your default favorite near `loadFocus()` in `fifa_widget.html`.

---

*Not affiliated with, endorsed by, or sponsored by FIFA — no FIFA marks or logos are used. MIT License.*
