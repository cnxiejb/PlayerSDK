#!/bin/bash

set -e

ertIdentity="iOS Developer"
IOS_SDK=iphoneos10.2
project="IJKMediaPlayer.xcodeproj"

cd ~/Documents/ios_mint/MintLive/MintLivePlayer/
rm -rf IJKMediaFramework.framework

cd ~/Documents/github/ijkplayer/ios/IJKMediaPlayer
xcodebuild -project $project -scheme "IJKMediaFramework" -configuration Release -destination 'platform=iOS Simulator,name=iPhone 6,OS=10.2' clean
xcodebuild -project $project -scheme "IJKMediaFramework" -configuration Release -destination generic/platform=iOS  -sdk $IOS_SDK clean
xcodebuild -project $project -scheme "IJKMediaFramework" -configuration Release -destination 'platform=iOS Simulator,name=iPhone 6,OS=10.2' build
xcodebuild -project $project -scheme "IJKMediaFramework" -configuration Release -destination generic/platform=iOS  -sdk $IOS_SDK build

cd ~/Library//Developer/Xcode/DerivedData/IJKMediaPlayer-bxwabylrihzwaydqoemuedsxeqps/Build/Products/
lipo -create Release-iphoneos/IJKMediaFramework.framework/IJKMediaFramework Release-iphonesimulator/IJKMediaFramework.framework/IJKMediaFramework -output IJKMediaFramework

cd Release-iphoneos/IJKMediaFramework.framework/
rm -rf IJKMediaFramework
mv ../../IJKMediaFramework .
mv ../IJKMediaFramework.framework ~/Documents/ios_mint/MintLive/MintLivePlayer/

