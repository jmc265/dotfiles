#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Open daily note
# @raycast.mode compact

# Optional parameters:
# @raycast.icon ✏️
# @raycast.packageName open daily note

# Documentation:
# @raycast.description Opens daily note in VSCode
# @raycast.author James


current_date=$(date +%F)
code-insiders -r ~/personal/jmc-notes-sync/00-Daily/${current_date}.md
echo "tell application \"System Events\" to key code 53" | osascript
