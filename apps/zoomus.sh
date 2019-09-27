#!/usr/bin/env bash

# Zoom.us

defaults write "ZoomChat" ZMEnableShowUserName -bool true
defaults write "ZoomChat" ZoomEnterFullscreenWhenStartMeeting -bool false
defaults write "ZoomChat" ZoomEnterFullscreenWhenViewShare -bool false
defaults write "ZoomChat" ZoomRememberPhoneKey -bool true
defaults write "ZoomChat" ZoomAutoCopyInvitationURL -bool true
