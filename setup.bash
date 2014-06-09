#!/usr/bin/env bash

#
# If the file/directory exists, and it is not a symbolic link, remove it.
# If the symbolic link doesn't exist, add it.
#


# ~/.vim is the only directory using the above logic. Do it separately.
if [[ -d $HOME/.vim && ! -L $HOME/.vim ]]; then
  echo "$HOME/.vim is a directory and not a symbolic link. Removing $HOME/.vim"
  rm -rf ~/.vim
fi
# If the symbolic link for ~/.vim doesn't exist, create it.
if [ ! -L $HOME/.vim ]; then
  # Create the directory as a symbolic link.
  ln -sv $PWD/_vim $HOME/.vim
fi


# Iterate over files, following the logic above.
files=(".vimrc" ".gvimrc" ".aliases" ".gitconfig" ".gitignore")
for i in "${files[@]}"
do
  if [[ -f "$HOME/$i" && ! -L "$HOME/$i" ]]; then
    echo "$HOME/$i is a file and not a symbolic link. Removing $HOME/$i"
    rm "$HOME/$i"
  fi
  if [ ! -L "$HOME/$i" ]; then
    # This git repo uses underscores instead of periods.
    underscore=$(echo "$i" | sed 's/\./_/g')
    ln -sv "$PWD/$underscore" "$HOME/$i"
  fi
done

# Tell our ~/.zshrc or ~/.bashrc to source ~/.aliases.
rc_files=("$HOME/.bashrc" "$HOME/.zshrc")
for rc_file in "${rc_files[@]}"
do
  if [ -e $rc_file ]; then
    if ! grep -q 'source ~/.aliases' $rc_file; then
      # The file does not already source our alias file.
      echo "if [ -f ~/.aliases ]; then source ~/.aliases; fi" >> $rc_file
    fi
    if ! grep -q 'PATH=$PATH:$HOME/shared_bin' $rc_file; then
      # The file does not already add ~/shared_bin to $PATH
      echo 'PATH=$PATH:$HOME/shared_bin' >> $rc_file
    fi
  fi
done


echo "Source whichever rc file you're using!"
