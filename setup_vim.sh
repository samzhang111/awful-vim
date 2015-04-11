#!/bin/bash
DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

mkdir -p ~/.vim/autoload ~/.vim/bundle 
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

cp vimrc ~/.vimrc

npm install -g bootlint
npm install -g jshint

cd ~/.vim/bundle
while read line
do
    git clone $line
done < "$DIR/plugins.txt"


# Tern specific 
cd ~/.vim/tern_for_vim
npm install tern
