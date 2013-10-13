#!/bin/sh

git submodule init && git submodule update
cp .vimrc .vimrc.bepo ~
cp -r .vim ~
