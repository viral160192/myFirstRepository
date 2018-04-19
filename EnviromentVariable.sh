#!/bin/bash


BUILD_VALUE="$1"

INFO_Path="$(dirname -- "$0")/Info.plist"

/usr/libexec/PlistBuddy -c "Set CFBundleVersion $BUILD_VALUE" $INFO_Path

BUNDLE_ID=`/usr/libexec/PlistBuddy -c "Print :CFBundleVersion" $INFO_Path`

echo "BundleId - $BUNDLE_ID"
float=$BUNDLE_ID
int=${float%.*.*}
echo "$int"
echo "Build version - $BUILD_VALUE"

