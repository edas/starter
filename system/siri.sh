#!/usr/bin/env bash

###############################################################################
# Siri
###############################################################################

# Disable Siri
defaults write com.apple.assistant.support "Assistant Enabled" -bool false

# Language
defaults write com.apple.assistant.backedup "Session Language" -string "fr_FR"

# Voice Feedback
# 2 : On
# 3 : Off
defaults write com.apple.assistant.backedup "Use device speaker for TTS" -int 3

# Keybord shortcut
# 0 : Off
# 2 : Hold Command Space
# 3 : Hold Option Space
# 4 : Press Fn (Function) Space
# 7 : Customize
defaults write com.apple.Siri HotkeyTag -int 0
# defaults write com.apple.Siri CustomizedKeyboardShortcut

# Show Siri in menu bar
defaults write com.apple.Siri StatusMenuVisible -bool false
