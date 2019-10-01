#!/usr/bin/env bash

###############################################################################
# Sharing
###############################################################################


# Set computer name (as done via System Preferences → Sharing)
[ -n "$COMPUTER_NAME" ] && sudo scutil --set ComputerName "$COMPUTER_NAME"
[ -n "$HOST_NAME" ] && sudo scutil --set HostName "$HOST_NAME"
[ -n "$HOST_NAME" ] && sudo scutil --set LocalHostName "$HOST_NAME"
[ -n "$HOST_NAME" ] && sudo defaults write /Library/Preferences/SystemConfiguration/com.apple.smb.server.plist \
    NetBIOSName -string "$HOST_NAME"
