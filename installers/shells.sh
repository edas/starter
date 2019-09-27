#!/usr/bin/env bash

###############################################################################
# Shells
###############################################################################

# Add shells installed by Homebrew
sudo bash -c "which zsh bash >> /etc/shells"

# Set default shell for the current user
chsh -s $(which bash)