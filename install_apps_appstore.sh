#!/usr/bin/env bash

source ./setup_homebrew.sh
# This script installs the apps that I use, but are not available in homebrew cask

# Install Mac App Store command line interface (https://github.com/mas-cli/mas)
brew install mas

# Install Xcode fully
mas lucky "Xcode"
# Install Xcode command line developer tools
xcode-select --install

# Paid VPN
mas lucky "nordvpn ike"
# Clipboard manager
mas lucky "CopyClip 2"