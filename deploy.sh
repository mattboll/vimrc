#!/bin/sh

git submodule init && git submodule update
cp .vimrc .vimrc.bepo ~
mkdir -p .vim/autoload
curl -Sso .vim/autoload/pathogen.vim https://raw.githubusercontent.com/tpope/vim-pathogen/master/autoload/pathogen.vim || \
fetch -o .vim/autoload/pathogen.vim https://raw.githubusercontent.com/tpope/vim-pathogen/master/autoload/pathogen.vim || \
echo couldn\'t get pathogen
cp -r .vim ~
cp -r mango.vim/colors ~/.vim
cd ~/.vim/bundle
vim -u NONE -c "helptags vim-fugitive/doc" -c q

