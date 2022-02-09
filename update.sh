#!/usr/bin/env bash
function mkdir-clean() {
    mkdir -p "$1"
    rm -rf "$1"/*
}

mkdir-clean config/bspwm
cp ~/.config/bspwm/bspwmrc config/bspwm

mkdir-clean config/palette
cp ~/.config/palette/palette.yml config/palette

mkdir-clean config/picom
cp ~/.config/picom/picom.conf config/picom

mkdir-clean config/alacritty
cp ~/.config/alacritty/alacritty.yml config/alacritty

mkdir-clean config/micro
cp ~/.config/micro/bindings.json config/micro
cp ~/.config/micro/settings.json config/micro
cp -r ~/.config/micro/colorschemes config/micro

mkdir-clean config/feh
cp ~/.config/feh/* config/feh

mkdir-clean scripts/
cp -r ~/.config/scripts/* scripts/

mkdir-clean bin
cp "$(which status-bar)" bin

# mkdir-clean home
# cp ~/.zshrc home/.zshrc