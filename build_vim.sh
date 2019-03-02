#!/bin/sh
# vim
mkdir src
cd src
git clone https://github.com/vim/vim.git
cd vim
git checkout v8.1.0888
./configure --enable-pythoninterp
make -j8
sudo make install
cd ..

rm -rf vim

cp .vimrc ~/.vimrc
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
