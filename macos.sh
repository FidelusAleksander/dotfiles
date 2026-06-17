#!/usr/bin/env bash
set -euo pipefail

# Trackpad
# Enable tap to click
defaults write com.apple.AppleMultitouchTrackpad Clicking -bool true

# Enable tap to click globally
defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1

# Enable tap to click for current host profile
defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1

# Increase trackpad tracking speed
defaults write NSGlobalDomain com.apple.trackpad.scaling -float 2

# Enable secondary click
defaults write com.apple.AppleMultitouchTrackpad TrackpadRightClick -bool true

# Set secondary click to bottom-right corner
defaults write com.apple.AppleMultitouchTrackpad TrackpadCornerSecondaryClick -int 2

# Dock
# Set Dock icon size to ~20%
defaults write com.apple.dock tilesize -int 26

# Enable Dock magnification
defaults write com.apple.dock magnification -bool true

# Set magnified icon size to ~70%
defaults write com.apple.dock largesize -int 89

# Natural scrolling (trackpad on)
# Keep natural scrolling enabled
defaults write NSGlobalDomain com.apple.swipescrolldirection -bool true

killall Dock || true
