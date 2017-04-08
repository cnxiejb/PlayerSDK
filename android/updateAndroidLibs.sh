#!/bin/bash
cd ~/Documents/mintPlayerSDk/android

rm -rf ijklibs.zip
mkdir ijklibs

sh compile-ijk.sh all
mv ./ijkplayer/ijkplayer-x86/src/main/libs/x86 ./ijklibs/
mv ./ijkplayer/ijkplayer-x86_64/src/main/libs/x86_64 ./ijklibs/
mv ./ijkplayer/ijkplayer-arm64/src/main/libs/arm64-v8a ./ijklibs/
mv ./ijkplayer/ijkplayer-armv5/src/main/libs/armeabi   ./ijklibs/
mv ./ijkplayer/ijkplayer-armv7a/src/main/libs/armeabi-v7a ./ijklibs/

zip -r  ijklibs.zip ijklibs
rm -rf ijklibs
