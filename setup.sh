#!/bin/bash
rm -r ~/.vim/
rm ~/.vimrc/
rm ~/.bash_aliases
cp -r _vim ~/.vim
cp _vimrc ~/.vimrc
cp _bash_aliases ~/.bash_aliases
