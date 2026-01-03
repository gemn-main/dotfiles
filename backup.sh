#!/bin/bash
set -e

DOTFILES="$HOME/dotfiles"
CONFIG="$HOME/.config"

cd "$DOTFILES"

# Копируем конфиги
rsync -av --delete "/home/user/obsidian/"   $HOME/dotfiles/obsidian/obsidian_data/
rsync -av --delete "$CONFIG/obsidian/"  $HOME/dotfiles/obsidian/obsidian_conf/
rsync -av --delete "$CONFIG/hypr/"   $HOME/dotfiles/hypr/
rsync -av --delete "$CONFIG/waybar/" $HOME/dotfiles/waybar/
rsync -av --delete "$CONFIG/kitty/"  $HOME/dotfiles/kitty/
rsync -av --delete "$CONFIG/nvim/"   $HOME/dotfiles/nvim/
rsync -av --delete "$CONFIG/rofi/"   $HOME/dotfiles/rofi/

# bash
rsync -av "$HOME/.bashrc" .

# Git
git add .

if git diff --cached --quiet; then
    exit 0
fi

git commit -m "Auto backup $(date '+%Y-%m-%d %H:%M')"
git push origin main

