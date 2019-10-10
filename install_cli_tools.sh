#!/usr/bin/env bash

# This script installs the cli-tools & libraries that I use most
source ./setup_homebrew.sh

### Install latest Bash
brew install bash
# We installed the new shell, now we have to activate it
echo "Adding the newly installed shell to the list of allowed shells"
# Prompts for password
sudo bash -c 'echo /usr/local/bin/bash >> /etc/shells'
# Change to the new shell, prompts for password
chsh -s /us

### Commands ###
brew install git
brew install wget
brew install telnet

### Libraries ###
# libdvdcss is used for ripping dvds ( dependency of handbrake app). You might not need it.
brew install libdvdcss

### Development apps ###
brew install awscli
brew install node
# Interactive man-in-the-middle proxy for HTTP and HTTPS
brew install mitmproxy