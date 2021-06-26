#!/bin/sh
cd $ROOT/src
find -maxdepth 6 -name '.git' | xargs rm -rf
rm -rf ../depot_tools/.git
rm -rf ../.git
