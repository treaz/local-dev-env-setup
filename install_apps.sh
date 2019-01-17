#!/usr/bin/env bash

source ./setup_homebrew.sh
# This script installs the apps that I use

### Generic apps ###
brew cask install evernote
brew cask install firefox
brew cask install google-chrome
brew cask install slack
brew cask install vlc
brew cask install skype
brew cask install teamviewer
# Window manager (with keyboard shortcuts)
brew cask install spectacle
brew cask install signal
# Full featured file archiver
brew cask install keka
# Window position manager (for multi-monitor setup)
brew cask install stay
# File storage size viewer
brew cask install grandperspective
# Anti-RSI & fatigue break manager
brew cask install time-out
# PAID network traffic manager (limits application access)
brew cask install tripmode
# PAID VPN client
brew cask install viscosity
# Invite-only cloud storage service
brew cask install stack

### Development apps ###
brew cask install sourcetree
brew cask install visual-studio-code
brew cask install iterm2
brew cask install graphql-playground
brew cask install postman
brew cask install virtualbox
brew cask install kitematic
brew install awscli

