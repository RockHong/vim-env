#!/bin/bash

# check we are in right directory when running this script
# if the parent directory is ~/.vim, then we are pretty fine.
# if not,
#     if ~/.vim exists, mv it as ~/.vim.old
#     if ~/.vimrc and ~/.gvimrc exist, rename them into ~/.vimrc.old and ~/.gvimrc.old
#     copy the parent directory to ~, make its name .vim
SCRIPT_PATH=`readlink -f $0`
CURRENT_DIR=`dirname $SCRIPT_PATH`
HOME_DIR=`readlink -f ~`
if [ $CURRENT_DIR != $HOME_DIR/.vim ];then
  if [ -e ~/.vim ]; then
    mv ~/.vim ~/.vim.old
  fi
  if [ -e ~/.vimrc ]; then
    mv ~/.vimrc ~/.vimrc.old
  fi
  if [ -e ~/.gvimrc ]; then
    mv ~/.gvimrc ~/.gvimrc.old
  fi

  cp -r $CURRENT_DIR ~/.vim
fi

# check if system has already has the RIGHT version of ctags
# can we find it in zyyper, if so use zypper
# if not, then download source, ./configure, make, make install
ctags --version | grep -i Exuberant > /dev/null
if [ $? -ne 0 ]; then
  echo "Exuberant ctags doesn't exist. please install using zypper or from source"
fi

# create symbol links for .vimrc, .gvimrc, and .ctags
ln -s ~/.vim/vimrc ~/.vimrc
ln -s ~/.vim/gvimrc ~/.gvimrc
ln -s ~/.vim/ctags ~/.ctags


