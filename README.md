<p align="center"><img src="public/icon.png" alt="setup-git icon" width="128" height="128"></p>

<h1 align="center">setup-git</h1>

<p align="center"><b>Shared git aliases and a global ignore file, in version control without any personal info.</b></p>

<p align="center">
  <img src="https://img.shields.io/badge/macOS-27%20%C2%B7%20daily%20use-000000?style=for-the-badge&logo=apple&logoColor=white" alt="macOS 27 · daily use" />
  <img src="https://img.shields.io/badge/Git-1.7.10%2B-F05032?style=for-the-badge&logo=git&logoColor=white" alt="Git 1.7.10+" />
  <img src="https://img.shields.io/badge/Shell-POSIX%20sh-4EAA25?style=for-the-badge&logo=gnubash&logoColor=white" alt="Shell POSIX sh" />
</p>

<p align="center">
  <a href="https://github.com/lawrence-berry/setup-git/actions/workflows/macos.yml"><img src="https://img.shields.io/github/actions/workflow/status/lawrence-berry/setup-git/macos.yml?branch=main&style=for-the-badge&logo=apple&logoColor=white&label=macOS%2015" alt="macOS 15 CI status" /></a>
  <a href="https://github.com/lawrence-berry/setup-git/actions/workflows/linux.yml"><img src="https://img.shields.io/github/actions/workflow/status/lawrence-berry/setup-git/linux.yml?branch=main&style=for-the-badge&logo=ubuntu&logoColor=white&label=Ubuntu%2024.04" alt="Ubuntu 24.04 CI status" /></a>
</p>

Shared git config and aliases, kept out of `~/.gitconfig` so they can live in version control without personal information. There is no `[user]` block: the name and email stay in `~/.gitconfig`.

## Install

```sh
./install.sh
```

Adds an `[include] path` to `~/.gitconfig` pointing at this repo's `gitconfig`. Re-runnable.

It also sets `core.excludesfile` to this repo's `gitignore`, so the patterns that should apply to every repo (`.DS_Store`, handover notes, Claude's local settings) are in version control. Edit `gitignore` in this repo; `~/.gitignore` is no longer used.

## Tests

CI lints `install.sh` with ShellCheck, then runs it twice in a scratch `HOME` on Ubuntu and macOS and checks that the `include.path` entry appears once, `core.excludesfile` points here and the aliases resolve.

Part of the [`setup-*`](https://lawrence-berry.github.io/setup) family; on a blank machine, `curl -fsSL https://lawrence-berry.github.io/setup | sh` installs them all (setup-mac and setup-iterm on macOS only).
