#!/bin/sh

brew install --cask rectangle && true
ln -sf $(pwd)/Rectangle/com.knollsoft.Rectangle.plist $HOME/Library/Preferences/com.knollsoft.Rectangle.plist
