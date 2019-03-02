#!/bin/sh

# packages
sudo yum install -y centos-release-scl
sudo yum install -y zsh wget ncurses-devel python-devel tcl-devel rh-python36
sudo yum groupinstall -y "Development tools"
sudo yum install -y libclang-devel

mkdir src
# zsh
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

