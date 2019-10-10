#!/usr/bin/env bash

source ./setup_homebrew.sh
# This script installs the java environment
# Deprecated: see install_jvm_langs.sh

brew tap caskroom/versions
brew cask install java8
brew cask install java

# Install jenv to facilitate switching between java versions
brew install jenv
echo 'export PATH="$HOME/.jenv/bin:$PATH"' >> ~/.bash_profile
echo 'eval "$(jenv init -)"' >> ~/.bash_profile

echo "Registering java8 with jenv"
jenv add /Library/Java/JavaVirtualMachines/jdk1.8.0_192.jdk/Contents/Home/
echo "Registering java11 with jenv"
jenv add /Library/Java/JavaVirtualMachines/openjdk-11.0.1.jdk/Contents/Home/

# Install maven
brew install maven
echo "RUN MANUALLY: jenv enable-plugin maven"
