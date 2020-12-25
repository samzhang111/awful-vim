#!/bin/bash
DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

mkdir -p ~/.vim/bundle 
pushd ~/.vim/bundle
    git clone https://github.com/VundleVim/Vundle.vim.git
popd

ln -s $DIR/vimrc ~/.vimrc

vim -c ":PluginInstall"
