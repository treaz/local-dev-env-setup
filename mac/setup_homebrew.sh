#!/usr/bin/env bash

# Ask for the administrator password upfront.
sudo -v

# Change shell to bash (as default for macos is zsh
chsh -s /bin/bash
# Silence the ZSH warning
echo 'export BASH_SILENCE_DEPRECATION_WARNING=1' > ~/.bash_profile

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Make sure that XCode command line tools are available. They are a prerequisite for homebrew.
if [[ $(xcode-select -v) = *xcode-select\ version* ]]; then
  echo "Xcode command line tools are already installed"
  else
    xcode-select --install
    xcodebuild -license accept
fi

# Check for Homebrew and install if we don't have it
if test ! $(which brew); then
  echo "Installing homebrew..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/horiaconstantin/.bash_profile
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

# Make sure we’re using the latest Homebrew.
brew update
