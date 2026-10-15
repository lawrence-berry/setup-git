# setup-git

Shared git config and aliases, kept out of `~/.gitconfig` so it can live in version control without any personal info (no `[user]` block — your name and email stay in your own `~/.gitconfig`).

## Install

```sh
./install.sh
```

Adds an `[include] path` to `~/.gitconfig` pointing at this repo's `gitconfig`. Re-runnable.

It also sets `core.excludesfile` to this repo's `gitignore`, so the patterns that should apply to every repo (`.DS_Store`, handover notes, Claude's local settings) are in version control. Edit `gitignore` here, not `~/.gitignore`, which is no longer used.
