#!/bin/bash
rm *.zip
ver=$(jq ".version" info.json | tr -d '"')
mkdir mogeritz_rocketsilotweak
rsync -r --exclude='mogeritz_rocketsilotweak' * mogeritz_rocketsilotweak/
zip -r  -x*\.vs -x*\.vscode -x*\.git -x*\.gitignore -x*\compress4factorio.sh  mogeritz_rocketsilotweak_$ver.zip mogeritz_rocketsilotweak/*
rm -r mogeritz_rocketsilotweak
