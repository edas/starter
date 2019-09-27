#!/usr/bin/env bash

###############################################################################
# Dock
###############################################################################

# Icon size of Dock items
defaults write com.apple.dock tilesize -int 48

# Lock the Dock size
defaults write com.apple.dock size-immutable -bool true

# Dock magnification
defaults write com.apple.dock magnification -bool true

# Icon size of magnified Dock items
defaults write com.apple.dock largesize -int 64

# Minimization effect: 'genie', 'scale', 'suck'
defaults write com.apple.dock mineffect -string 'genie'

# Prefer tabs when opening documents: 'always', 'fullscreen', 'manual'
defaults write NSGlobalDomain AppleWindowTabbingMode -string 'fullscreen'

# Dock orientation: 'left', 'bottom', 'right'
defaults write com.apple.dock 'orientation' -string 'bottom'

# Dock pinning: 'start', 'middle', 'end'
defaults write com.apple.dock pinning -string 'middle'

# Lock the Dock position
defaults write com.apple.dock position-immutable -bool true

# Double-click a window's title bar to:
# None
# Mimimize
# Maximize (zoom)
defaults write NSGlobalDomain AppleActionOnDoubleClick -string "Maximize"

# Minimize to application
defaults write com.apple.dock minimize-to-application -bool false

# Animate opening applications
defaults write com.apple.dock launchanim -bool true

# Automatically hide and show the Dock
defaults write com.apple.dock autohide -bool true

# Auto-hide delay
# defaults write com.apple.dock autohide-delay -float 0

# Auto-hide animation duration
# defaults write com.apple.dock autohide-time-modifier -float 0

# Spring loaded Dock items
defaults write com.apple.dock enable-spring-load-actions-on-all-items -bool true

# Show indicator lights for open applications
defaults write com.apple.dock show-process-indicators -bool true

# Highlight hover effect for the grid view of a stack
defaults write com.apple.dock mouse-over-hilite-stack -bool true

# Apple may use this preference to automatically add Launchpad to the Dock
defaults write com.apple.dock 'checked-for-launchpad' -bool true

# Remove all (default) app icons from the Dock
defaults write com.apple.dock persistent-apps -array
defaults write com.apple.dock persistent-others -array

killall Dock

# Show only open applications in Dock
# defaults write com.apple.dock static-only -bool true


dockutil --add /Applications/Mattermost.app --no-restart
dockutil --add /Applications/zoom.us.app --no-restart
dockutil --add "/Applications/Firefox Developer Edition.app" --no-restart
dockutil --add "/Applications/Standard Notes.app" --no-restart
dockutil --add /Applications/Calendar.app --no-restart
dockutil --add /Applications/iTerm.app --no-restart
dockutil --add /Applications/Mail.app --no-restart

killall Dock
# Add special items to the Dock
# Keys:
#   persistent-apps: left side of the Dock
#   persistent-others: right side of the Dock
# Values:
#   Spacer Tile : '{tile-data={}; tile-type="spacer-tile";}'
#   Recent/Favorite items stack: '{ "tile-data" = { "list-type" = 1; }; "tile-type" = "recents-tile"; }'
# Add a spacer to the left of the Dock

defaults write com.apple.dock persistent-others -array-add '{ "tile-data" = { "list-type" = 1; "file-label" = "Applications récentes"; }; "tile-type" = "recents-tile"; }'
defaults write com.apple.dock persistent-others -array-add '{ "tile-data" = { "list-type" = 2; "file-label" = "Documents récents"; }; "tile-type" = "recents-tile"; }'

killall Dock

dockutil --add $HOME/Downloads --view fan --display stack --sort dateadded

killall Dock
# Restart to see the new dock


# Display translucent Dock icons for hidden applications
defaults write com.apple.dock showhidden -bool false

# Show revents
defaults write com.apple.dock "show-recents" -bool true

# Lock the Dock contents
# defaults write com.apple.dock contents-immutable -bool true
