#!/bin/sh

launchctl unload -w /System/Library/LaunchDaemons/com.apple.smbd.plist
launchctl unload -w /System/Library/LaunchDaemons/com.apple.AppleFileServer.plist

exit 0