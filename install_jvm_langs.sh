#!/usr/bin/env bash

#SDKMan can be used to install any jvm language and to do version management
curl -s "https://get.sdkman.io" | bash
source "$HOME/.sdkman/bin/sdkman-init.sh"

sdk install java
sdk install scala