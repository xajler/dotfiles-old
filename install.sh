#!/bin/bash


ln -s ~/src/dotfiles/* ~
cd ~
mv vim .vim
mv vimrc .vimrc

rm install.sh

mkdir .vim/backup 

git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

vim +BundleInstall +qall