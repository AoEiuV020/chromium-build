#!/bin/sh
cd "$ROOT"
fetch --nohooks android
cd src
./build/install-build-deps-android.sh
gclient runhooks
