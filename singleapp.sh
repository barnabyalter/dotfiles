#!/bin/sh

defaults write com.apple.dock single-app -bool $1
killall Dock
