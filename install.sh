#!/bin/sh
# Adds an [include] of this repo's gitconfig to your ~/.gitconfig. Safe to re-run.
# Your name/email stay in ~/.gitconfig; the shared aliases live here.
set -e
dir="$(cd "$(dirname "$0")" && pwd)"
git config --global --get-all include.path 2>/dev/null | grep -qxF "$dir/gitconfig" \
  || git config --global --add include.path "$dir/gitconfig"
echo "set up: $HOME/.gitconfig includes $dir/gitconfig"
