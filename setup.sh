#!/usr/bin/env bash

# Clone the submodules
git submodule update --init --recursive

# Symlink configuration file to default location
ln -s tmux.conf $HOME/.tmux.conf
