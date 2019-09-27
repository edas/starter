#!/usr/bin/env bash

###############################################################################
# Node
###############################################################################

NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh" 

nvm install --latest-npm
nvm alias default node

# Update npm
npm update -g npm
npm install -g yarn

# Hotel http server
npm install -g hotel
npm install -g hotel-clerk