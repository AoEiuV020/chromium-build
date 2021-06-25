#!/bin/sh
sudo apt install -y ccache
mkdir -p "$ROOT/cache"
mkdir -p $HOME/.ccache/
echo 'compiler_check = none' >> $HOME/.ccache/ccache.conf
echo "stats = false" >> $HOME/.ccache/ccache.conf
echo 'max_size = 20G' >> $HOME/.ccache/ccache.conf
echo "base_dir = $HOME" >> $HOME/.ccache/ccache.conf
echo "cache_dir = $ROOT/cache" >> $HOME/.ccache/ccache.conf
echo "hash_dir = false" >> $HOME/.ccache/ccache.conf
