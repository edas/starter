#!/usr/bin/env bash

###############################################################################
# Time Machine
###############################################################################

# Prevent Time Machine from prompting to use new hard drives as backup volume
defaults write com.apple.TimeMachine DoNotOfferNewDisksForBackup -bool true

# disable time machine
##
sudo defaults write /Library/Preferences/com.apple.TimeMachine MobileBackups -bool false
sudo defaults write /Library/Preferences/com.apple.TimeMachine AutoBackup -bool false

sudo defaults write /Library/Preferences/com.apple.TimeMachine RequiresACPower -bool true

# Disable local Time Machine backups
hash tmutil &>/dev/null && sudo tmutil disable
