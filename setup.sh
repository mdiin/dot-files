#!/bin/sh
export SUFFIX=PRE_CONFIG

## guarded_replace
# Only replace target with source if target is not a symlink, or if it is a
# symlink which does not point to target.
#
# Parameters:
# - $1 target
# - $2 source
##
function guarded_replace() {
  echo "Setting up $2"

  if [ ! -e "$1" ]; then
    echo "  - $1 does not exist"
    echo "  - Creating as symbolic link to `pwd`/$2"
    ln -s "`pwd`/$2" "$1"
  elif [ ! -L "$1" ]; then
    echo "  - $1 is not a symlink"
    echo "  - Backing up to $1_$SUFFIX and replacing with symlink to `pwd`/$2"
    mv "$1" "$1_$SUFFIX"
    ln -s "`pwd`/$2" "$1"
  elif [ "`readlink $1`" != "`pwd`/$2" ]; then
    echo "  - $1 is a symlink pointing to `readlink $1`"
    echo "  - Backing up to $1_$SUFFIX and replacing with symlink to `pwd`/$2"
    mv "$1" "$1_$SUFFIX"
    ln -s "`pwd`/$2" "$1"
  else
    echo "  - Nothing to do here"
  fi
}

guarded_replace "$HOME/.config/fish" "fish"
guarded_replace "$HOME/.config/systemd" "systemd"
systemctl --user daemon-reload
systemctl --user enable ssh-agent.service
systemctl --user start ssh-agent.service
guarded_replace "$HOME/.gitconfig" "git/dot_gitconfig"
guarded_replace "$HOME/.clojure" "clojure"

guarded_replace "$HOME/.psqlrc" "psql/dot_psqlrc"
guarded_replace "$HOME/.tmux" "tmux"
guarded_replace "$HOME/.tmux.conf" "tmux/dot_tmux.conf"
guarded_replace "$HOME/.ssh/config" "ssh/config"
