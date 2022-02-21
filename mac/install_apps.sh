#!/usr/bin/env bash

source ./setup_homebrew.sh
# This script installs the apps that I use

### Generic apps ###
brew install --cask joplin
brew install --cask firefox
brew install --cask brave-browser
brew install --cask slack
brew install --cask vlc
brew install --cask zoom
# Window manager (with keyboard shortcuts)
brew install --cask spectacle
# Full featured file archiver
brew install --cask  keka
# Window position manager (for multi-monitor setup)
#brew cask install stay
# File storage size viewer
#brew cask install grandperspective
# Anti-RSI & fatigue break manager
brew install --cask  time-out
# Professional image editing tool
#brew cask install gimp

### Development apps ###
brew install --cask sourcetree
brew install --cask vscodium
brew install --cask iterm2
brew install --cask postman
# GUI for lsof - displays all open files and sockets in use by all running processes on your system
brew install --cask sloth

# Wireshark app and cli
#brew install wireshark
#brew cask install wireshark
