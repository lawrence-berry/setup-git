#!/bin/sh
# Adds an [include] of this repo's gitconfig to your ~/.gitconfig and points core.excludesfile at this repo's gitignore. Safe to re-run.
# Your name/email stay in ~/.gitconfig; the shared aliases live here.
set -e
dir="$(cd "$(dirname "$0")" && pwd)"
git config --global --get-all include.path 2>/dev/null | grep -qxF "$dir/gitconfig" \
  || git config --global --add include.path "$dir/gitconfig"
# Global ignore: the gitignore next to this script (git has no include for ignore files, so this is set directly).
git config --global core.excludesfile "$dir/gitignore"
echo "set up: $HOME/.gitconfig includes $dir/gitconfig and ignores files listed in $dir/gitignore"
