set -x

plutil -replace trialStart3 -date $(date -u +%Y-%m-%dT%H:%M:%SZ) ~/Library/Preferences/com.surteesstudios.Bartender.plist

