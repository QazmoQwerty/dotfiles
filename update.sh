#!/usr/bin/env bash
function mkdir-clean() {
    mkdir -p "$1"
    rm -rf "$1"/*
}

mkdir-clean config/bspwm
cp ~/.config/bspwm/bspwmrc config/bspwm

mkdir-clean config/palette
cp ~/.config/palette/palette.yml config/palette


mkdir-clean config/micro
cp ~/.config/micro/bindings.json config/micro
cp ~/.config/micro/settings.json config/micro
cp -r ~/.config/micro/colorschemes config/micro

mkdir-clean config/polybar
cp ~/.config/polybar/* config/polybar

mkdir-clean config/theme
cp -r ~/.config/theme/* config/theme

mkdir-clean scripts/
cp -r ~/.config/scripts/* scripts/

mkdir-clean bin
cp "$(which settings)" bin
cp "$(which deploy-files)" bin

# mkdir-clean home
# cp ~/.zshrc home/.zshrc