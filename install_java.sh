#!/usr/bin/env bash

source ./setup_homebrew.sh
# This script installs the java environment


brew tap caskroom/versions
brew cask install java8
brew cask install java

# Install jenv to facilitate switching between java versions
brew install jenv
echo 'export PATH="$HOME/.jenv/bin:$PATH"' >> ~/.bash_profile
echo 'eval "$(jenv init -)"' >> ~/.bash_profile

# Install maven
brew install maven
echo "RUN MANUALLY: jenv enable-plugin maven"
