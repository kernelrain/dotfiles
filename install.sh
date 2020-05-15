#!/usr/bin/env bash

inst () {
    target_dir=$(dirname $2)
    mkdir -vp $target_dir
    ln -sfv "$(pwd)/$1" $2
}

inst shell/.zshrc ~/
inst shell/.tmux.conf ~/
inst shell/.tmux ~/
inst shell/.config/fish ~/.config/fish

inst editor/.vimrc ~/
inst editor/.vimrc ~/.config/nvim/init.vim
inst editor/coc-settings.json ~/.config/nvim/coc-settings.json
inst editor/config ~/.config/nvim/config

inst gui/.Xresources ~/
inst gui/.i3/config ~/.i3/config
inst gui/.config/termite/config ~/.config/termite/config

inst misc/.nethackrc ~/
