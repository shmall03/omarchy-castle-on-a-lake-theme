#!/bin/bash

# Remove the Castle On A Lake day/night background switcher.
#
# Removes the installed scripts and post-boot hook, and stops the daemon.

set -e

SCRIPTS_DEST="$HOME/.config/omarchy/scripts"
DAEMON="$SCRIPTS_DEST/bg-daynight-daemon"

rm -f "$SCRIPTS_DEST/bg-daynight" "$DAEMON"
rm -f "$HOME/.config/omarchy/hooks/post-boot.d/bg-daynight-daemon"

daemon_pid=$(pgrep -f "$DAEMON" | head -1)
if [[ -n $daemon_pid ]]; then
  kill -- "-$daemon_pid" 2>/dev/null || kill "$daemon_pid" 2>/dev/null || true
fi

echo "Day/night background switcher removed."
