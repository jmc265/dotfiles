#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Note
# @raycast.mode compact

# Optional parameters:
# @raycast.icon ✏️
# @raycast.argument1 { "type": "text", "placeholder": "Note" }
# @raycast.packageName note

# Documentation:
# @raycast.description Add to daily note
# @raycast.author James

echo "tell application \"System Events\" to key code 53" | osascript

current_date=$(date +%F)
current_time=$(date +%R)
echo -e "${current_time} - $1" >> ~/personal/jmc-notes-sync/00-Daily/${current_date}.md
