#!/bin/bash

CFG="/home/$(whoami)/.config"

if [ ! -e "$PWD/install.sh" ]; then
  echo "install.sh is not being ran from \$PWD. Quitting"
  exit 1
fi

mkdir -p target
echo "Replacing target/* with updated dotfiles..."
rm -rf target/*
cp -r ./hypr ./target/hypr
cp -r ./quickshell ./target/quickshell

ln -sfTv $PWD/target/hypr $CFG/hypr
ln -sfTv $PWD/target/quickshell $CFG/quickshell
