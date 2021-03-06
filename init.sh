#!/bin/bash

#GITPATH=/mnt/c/Users/USERNAME/Apps/github.com/inamuu/

set -ux

apt update -y
apt install -y \
  connect-proxy \
  jq \
　vim \
　git \
  make \
  mysql-client \
  language-pack-ja \
　unzip \
　tmux \
　zsh

cd ${GITPATH}

# git 
git config --global user.email "8310973+inamuu@users.noreply.github.com"
git config --global user.name "inamuu"
git config --global core.editor vim

git clone git@github.com:inamuu/setup-mac-ansible.git
# ghq
# go get github.com/motemen/ghq

cd /tmp/
wget clipboard://github.com/equalsraf/win32yank/releases/download/v0.0.4/win32yank-x64.zip
unzip win32yank-x64.zip
chmod u+x win32yank.exe
mv win32yank.exe /usr/local/bin/
echo "win32yank!!" | win32yank.exe -i


