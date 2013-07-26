#!/bin/bash
rm -rf ~/.vim
rm ~/.vim
rm ~/.vimrc
rm ~/.gvimrc
rm ~/.bash_aliases
ln -sv $PWD/_vim ~/.vim
ln -sv $PWD/_vimrc ~/.vimrc
ln -sv $PWD/_gvimrc ~/.gvimrc
ln -sv $PWD/_bash_aliases ~/.bash_aliases
source ~/.bashrc
