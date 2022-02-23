#!/usr/bin/env bash

# This script changes some of the default macOS settings
# Reference: https://github.com/kevinSuttle/macOS-Defaults/blob/master/.macos

###############################################################################
### UI
###############################################################################
echo "Setting always show scrollbars" # Possible values: `WhenScrolling`, `Automatic` and `Always`
defaults write NSGlobalDomain AppleShowScrollBars -string "Always"
echo "Setting expand save panel by default"
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode2 -bool true

echo "Add the volume icon on the menu bar"
defaults write com.apple.systemuiserver "NSStatusItem Visible com.apple.menuextra.volume" -bool true
defaults write com.apple.systemuiserver menuExtras -array-add "/System/Library/CoreServices/Menu Extras/Volume.menu"
echo "Restarting the menu bar"
killall -KILL SystemUIServer

echo "Set automatically quit printer app once the print jobs complete"
defaults write com.apple.print.PrintingPrefs "Quit When Finished" -bool true

echo "Enabling Require password immediately after sleep or screen saver begins"
defaults write com.apple.screensaver askForPassword -int 1
defaults write com.apple.screensaver askForPasswordDelay -int 0

echo "Switching to Dark Mode" #ref: https://www.simonewebdesign.it/how-to-enable-dark-mode-macos-command-line/
osascript -e 'tell app "System Events" to tell appearance preferences to set dark mode to not dark mode'

###############################################################################
### Keyboard
###############################################################################
echo "Disable smart quotes"
defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -bool false
echo "Disable smart dashes"
defaults write NSGlobalDomain NSAutomaticDashSubstitutionEnabled -bool false
echo "Disable auto-correct"
defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false
echo "Disable automatic capitalization"
defaults write NSGlobalDomain NSAutomaticCapitalizationEnabled -bool false

###############################################################################
### Finder
###############################################################################
echo "Setting Finder: show hidden files by default"
defaults write com.apple.finder AppleShowAllFiles -bool true
echo "Setting Finder: show path bar"
defaults write com.apple.finder ShowPathbar -bool true
echo "Restarting Finder"
killall Finder

###############################################################################
### Firewall
###############################################################################

echo "Turning on the firewall, you'll need to restart the computer for changes to take effect"
sudo defaults write /Library/Preferences/com.apple.alf globalstate -int 1


###############################################################################
### Behind-the-scenes settings
###############################################################################
# Based on this: https://apple.stackexchange.com/questions/296111/macos-sierra-ulimit-maxproc-only-2500
echo "Setting OS into Server performace mode, you'll need to restart the computer for changes to take effect"
sudo nvram boot-args="serverperfmode=1 $(nvram boot-args 2>/dev/null | cut -f 2-)"


###############################################################################
### Mail
###############################################################################
echo "Disabling expansion of attachments (Inline Attachment)"
defaults write com.apple.mail DisableInlineAttachmentViewing -bool yes

###############################################################################
### Sound
###############################################################################
echo "Disabling OS sounds effects"
defaults write com.apple.systemsound "com.apple.sound.uiaudio.enabled" -int 0

###############################################################################
### Misc
###############################################################################
echo "Disabling creation of .DS_Store files"
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool TRUE

printf "\n### MANUAL operations ###\n"
echo "Manual step: Disabling Remote Content in Apple Mail"
echo "Launch Mail in OS X and go to Mail > Preferences > Viewing. Find the box labeled Load remote content in messages and uncheck it."

echo "To enable trackpad tap to click, do it via interface because the cli seems to be macOS version dependent"
echo "To increase the resolution of the retina screen, do it via the interface (displays -> scaled)"
echo "Ultimately, restart the computer so changes take effect everywhere (might not be needed, but just to make sure)"
