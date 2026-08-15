#!/bin/bash

# Install the Castle On A Lake day/night background switcher.
#
# Copies the day/night scripts into ~/.config/omarchy/scripts/, installs a
# post-boot hook so the daemon starts at login, and starts it immediately.
# Safe to re-run (idempotent).

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SCRIPTS_DEST="$HOME/.config/omarchy/scripts"
HOOK_SOURCE="$SCRIPT_DIR/hooks/post-boot.d/bg-daynight-daemon"
DAEMON="$SCRIPTS_DEST/bg-daynight-daemon"

mkdir -p "$SCRIPTS_DEST"
cp "$SCRIPT_DIR/scripts/bg-daynight" "$SCRIPTS_DEST/bg-daynight"
cp "$SCRIPT_DIR/scripts/bg-daynight-daemon" "$DAEMON"
chmod +x "$SCRIPTS_DEST/bg-daynight" "$DAEMON"

omarchy hook install post-boot "$HOOK_SOURCE" >/dev/null

if ! pgrep -f "$DAEMON" >/dev/null 2>&1; then
  setsid "$DAEMON" </dev/null >>"$HOME/.local/state/omarchy/bg-daynight-daemon.log" 2>&1 &
fi

echo "Day/night background switcher installed."
echo "While the Castle On A Lake theme is active, the background will switch"
echo "to its -night variant at sunset and back at sunrise."
