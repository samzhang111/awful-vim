#!/bin/bash
DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

mkdir -p ~/.vim/autoload ~/.vim/bundle 
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

curl "http://amix.dk/vim/vimrc.txt" > ~/.vimrc
echo "execute pathogen#infect()" >> ~/.vimrc

npm install -g bootlint
npm install -g jshint
npm install -g tern

cd ~/.vim/bundle
while read line
do
    git clone $line
done < "$DIR/plugins.txt"
