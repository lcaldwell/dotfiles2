#!/bin/sh
echo "Installing Vundle (vim package manager)"
if [ ! -d ~/.vim/bundle/Vundle.vim ] ; then
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
else
    echo "Already installed, checking up to date"
    cd ~/.vim/bundle/Vundle.vim
    git pull
fi

vim +PluginInstall +qall
