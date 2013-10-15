#!/bin/sh

git submodule init && git submodule update
cp .vimrc .vimrc.bepo ~
mkdir .vim/autoload
curl -Sso .vim/autoload/pathogen.vim https://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim
cp -r .vim ~
