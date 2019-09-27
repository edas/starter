#!/usr/bin/env bash

###############################################################################
# Itsycal
###############################################################################

## General

# Automatically check for updates
defaults write com.mowglii.ItsycalApp SUEnableAutomaticChecks -bool true

# First day of week
defaults write com.mowglii.ItsycalApp WeekStartDOW -int 1

# Event list shows X days
defaults write com.mowglii.ItsycalApp ShowEventDays -int 7

## Appearance

# Use outline icon
defaults write com.mowglii.ItsycalApp UseOutlineIcon -bool true

# Show month in icon
defaults write com.mowglii.ItsycalApp ShowMonthInIcon -bool false

# Show day of week in icon
defaults write com.mowglii.ItsycalApp ShowDayOfWeekInIcon -bool true

# Hide date icon
defaults write com.mowglii.ItsycalApp HideIcon -bool true

# Highlight day(s) of week
#   Day | S | M | T | W |  T |  F |  S
# Value | 1 | 2 | 4 | 8 | 16 | 32 | 64
# Add values together for each day selected
# 65: Sunday (1) + Saturday (64)
defaults write com.mowglii.ItsycalApp HighlightedDOWs -int 65

# Theme
# 1: Light
# 2: Dark
#defaults write com.mowglii.ItsycalApp ThemePreference -int 2

# Show event location
defaults write com.mowglii.ItsycalApp kShowEventDots -bool true

# Show event location
defaults write com.mowglii.ItsycalApp ShowLocation -bool true

# Show calendar weeks
defaults write com.mowglii.ItsycalApp ShowWeeks -bool true

# Number of calendar rows
#defaults write com.mowglii.ItsycalApp MoCalendarNumRows -int 10

# What to sho
defaults write com.mowglii.ItsycalApp ClockFormat -string "E d - H:mm"