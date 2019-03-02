#!/bin/sh

# packages
sudo yum install -y centos-release-scl
sudo yum install -y zsh wget ncurses-devel python-devel tcl-devel rh-python36

# zsh
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

# vim
mkdir src
cd src
git clone https://github.com/vim/vim.git
git checkout v8.1.0888
./configure --enable-pythoninterp
make -j8
sudo make install
cd ..

rm -rf vim

cp .vimrc ~/.vimrc

