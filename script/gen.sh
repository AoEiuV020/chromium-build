#!/bin/sh
cd "$ROOT/src"
gn gen out/arm64/ --args='target_os="android" target_cpu="arm64"'
