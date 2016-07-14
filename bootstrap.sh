#!/bin/bash

# if Vundle has not been installed, install it.
if [ ! -d ~/.vim/bundle/Vundle.vim ]; then
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi

# Make symbol links for dotfiles in this repo
DIR=`dirname ${BASH_SOURCE[0]}`
FILES=$DIR/.*
for f in $FILES
do
    if [ -f $f ]; then
        if [ -f $HOME/`basename $f` ]; then
            mv $HOME/`basename $f` $HOME/`basename $f`.old
        fi
        ln -s $f $HOME/`basename $f`
    fi
done

vim +PluginInstall +qall
