#!/usr/bin/env bash

source ./setup_homebrew.sh
# This script installs the apps that I use

### Generic apps ###
brew cask install joplin
brew cask install firefox
brew cask install brave-browser
brew cask install slack
brew cask install vlc
brew cask install zoom
# Window manager (with keyboard shortcuts)
brew cask install spectacle
# Full featured file archiver
brew cask install keka
# Window position manager (for multi-monitor setup)
#brew cask install stay
# File storage size viewer
#brew cask install grandperspective
# Anti-RSI & fatigue break manager
brew cask install time-out
# Professional image editing tool
#brew cask install gimp

### Development apps ###
brew cask install sourcetree
brew cask install vscodium
brew cask install iterm2
brew cask install postman
# GUI for lsof - displays all open files and sockets in use by all running processes on your system
brew cask install sloth

# Wireshark app and cli
#brew install wireshark
#brew cask install wireshark
