#!/bin/bash
rm -r ~/.vim/
rm ~/.vimrc
rm ~/.bash_aliases
ln -sv _vim ~/.vim
ln -sv _vimrc ~/.vimrc
ln -sv _bash_aliases ~/.bash_aliases
. ~/.bashrc
