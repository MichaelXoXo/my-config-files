#!/bin/bash
VER=121 # 你使用的Navicat Premium版本号，12.0.x为120，12.1.x为121，以此类推。
DSTR=$(date +%Y%m%d)
defaults write ~/Library/Preferences/com.prect.NavicatPremium12.plist ptc$VER "$DSTR"
defaults write ~/Library/Preferences/com.prect.NavicatPremium12.plist ptcl$VER "$DSTR"

echo -n "$DSTR" > ~/Library/Application\ Support/PremiumSoft\ CyberTech/Navicat\ CC/Navicat\ Premium/.tc$VER
echo -n "$DSTR" > ~/Library/Caches/com.prect.NavicatPremium12/.tcl$VER
