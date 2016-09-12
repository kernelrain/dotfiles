#!/usr/bin/env sh

git clone https://github.com/zsh-users/antigen.git .antigen
curl -fLo $HOME/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
