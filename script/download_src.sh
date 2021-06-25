#!/bin/sh
cd "$ROOT"
git clone --depth 1 "https://github.com/chromium/chromium.git" src
gclient config --name=src --unmanaged "https://github.com/chromium/chromium.git"
echo 'target_os = ["android"]' >> .gclient
gclient sync --nohooks
cd src
./build/install-build-deps-android.sh
gclient runhooks
