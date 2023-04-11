# dotfiles

This repository contains all my configuration files for the command line tools I use on my macOS desktop. My daily driver is the 2020 MacBook Air with 16 GB RAM.

Screenshot: TBA

## Overview

Brief overview of the tools I use. Not all are represented in my dotfiles.

* WM: Rectangle[^1]
* Terminal: alacritty
* Shell: zsh
* Editor: VS code, nvim

## Usage

In order to use my dotfiles, you'll need git and [GNU stow](https://www.gnu.org/software/stow/).

1. Clone this repository into $HOME.

```sh
git clone https://github.com/justsharan/dotfiles.git $HOME/.dotfiles/
```

2. `stow` to symlink as needed. Examples:

```sh
# Stow all of my dotfiles (not recommended)
stow */

# Stow dotfiles for specific programs as needed
stow zsh
stow nvim
```

[^1]: I used to use a tiling WM for macOS called [yabai](https://github.com/koekeishiya/yabai), but I eventually switched to Rectangle as it was simpler and had all the features I needed. yabai is more akin to proper tiling WMs from linux, such as i3 or dwm.
