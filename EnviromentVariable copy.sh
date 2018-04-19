#!/bin/bash


BUILD_VALUE="$1"

INFO_Path="$(dirname -- "$0")/Info.plist"

myVar=$(grep -Po "(?<=^CFBundleVersion ).*" $INFO_Path)
/usr/libexec/PlistBuddy -c "Set CFBundleVersion $BUILD_VALUE" $INFO_Path

echo "Pre Value is - $myVar"
echo "API Expiration time (in hours) - $APIExpirationTime"

