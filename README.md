<p align="center"><img src="public/icon.png" alt="setup-git icon" width="128" height="128"></p>

<h1 align="center">setup-git</h1>

<p align="center"><b>Shared git aliases and a global ignore file, in version control without any personal info.</b></p>

<p align="center">
  <img src="https://img.shields.io/badge/macOS-27-000000?style=for-the-badge&logo=apple&logoColor=white" alt="macOS 27" />
  <img src="https://img.shields.io/badge/Linux-Ubuntu%2024.04-E95420?style=for-the-badge&logo=ubuntu&logoColor=white" alt="Linux Ubuntu 24.04" />
  <img src="https://img.shields.io/badge/Shell-POSIX%20sh-4EAA25?style=for-the-badge&logo=gnubash&logoColor=white" alt="Shell POSIX sh" />
  <img src="https://img.shields.io/badge/Git-include.path-F05032?style=for-the-badge&logo=git&logoColor=white" alt="Git include.path" />
</p>

<p align="center">
  <a href="https://github.com/lawrence-berry/setup-git/actions/workflows/ci.yml"><img src="https://img.shields.io/github/actions/workflow/status/lawrence-berry/setup-git/ci.yml?branch=main&style=for-the-badge&logo=githubactions&logoColor=white&label=CI" alt="CI status" /></a>
</p>

Shared git config and aliases, kept out of `~/.gitconfig` so it can live in version control without any personal info (no `[user]` block — your name and email stay in your own `~/.gitconfig`).

## Supported versions

| Component | Version | Status |
|---|---|---|
| macOS | 27 (Apple Silicon) | Used daily |
| macOS | 15 | CI |
| Ubuntu | 24.04 | CI |
| Git | 1.7.10+ (`include.path`); developed on 2.56 | Install re-run twice in CI, result checked |
| Shell | `/bin/sh` (POSIX) | ShellCheck in CI |

## Install

```sh
./install.sh
```

Adds an `[include] path` to `~/.gitconfig` pointing at this repo's `gitconfig`. Re-runnable.

It also sets `core.excludesfile` to this repo's `gitignore`, so the patterns that should apply to every repo (`.DS_Store`, handover notes, Claude's local settings) are in version control. Edit `gitignore` here, not `~/.gitignore`, which is no longer used.

## Tests

CI lints `install.sh` with ShellCheck, then runs it twice in a scratch `HOME` on Ubuntu and macOS and checks that the `include.path` entry appears once, `core.excludesfile` points here and the aliases resolve.

Part of the [`setup-*`](https://lawrence-berry.github.io/setup) family; on a blank machine, `curl -fsSL https://lawrence-berry.github.io/setup | sh` installs them all (setup-mac and setup-iterm on macOS only).
