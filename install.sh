#!/bin/bash

#SCRIPT_PATH=`readlink -f $0`   # readlink -f doesn't work on mac
#HOME_DIR=`readlink -f ~`
SCRIPT_PATH=$(x=`dirname $0`; cd $x; y=`pwd`; z=`basename $0`; echo $y/$z)
HOME_DIR=$(x=`dirname ~`; cd $x; y=`pwd`; z=`basename ~`; echo $y/$z)
CURRENT_DIR=`dirname $SCRIPT_PATH`


if [ -e ~/.vimrc ]; then
  mv ~/.vimrc ~/.vimrc.old
fi
if [ -e ~/.gvimrc ]; then
  mv ~/.gvimrc ~/.gvimrc.old
fi
if [ -e ~/.ctags ]; then
  mv ~/.ctags ~/.ctags.old
fi


# create symbol links for .vimrc, .gvimrc, and .ctags
ln -s $CURRENT_DIR/vimrc ~/.vimrc
ln -s $CURRENT_DIR/gvimrc ~/.gvimrc
ln -s $CURRENT_DIR/ctags ~/.ctags

# create symbol link for .vim if needed
if [ $CURRENT_DIR != $HOME_DIR/.vim ];then
  if [ -h ~/.vim ]; then
      rm -rf ~/.vim
  elif [ -e ~/.vim ]; then
    mv ~/.vim ~/.vim.old
  fi
  ln -s $CURRENT_DIR ~/.vim
fi

# check if system has already has the RIGHT version of ctags
# can we find it in zyyper, if so use zypper
# if not, then download source, ./configure, make, make install
ctags --version | grep -i Exuberant > /dev/null
if [ $? -ne 0 ]; then
  echo "Exuberant ctags doesn't exist. please install using zypper or from source"
fi

# for command-t plugin
vim --version | grep "+ruby" > /dev/null
if [ $? -ne 0 ]; then
  echo "command-t plugin needs a ruby supported vim version"
#fi
#
#ruby --version > /dev/null
#if [ $? -ne 0 ]; then
#  echo "ruby doesn't exist. please install it, or command-t won't work."
else # assume that if vim with "+ruby" then ruby is installed
  ( cd ~/.vim/bundle/command-t/ruby/command-t ; ruby extconf.rb ; make || 
    echo "command-t is not fully installed. please read the online manual and fix it" ; make clean )
fi
# if on mac, clang complains that it encounters some option error, you can try to add following before make:
# ARCHFLAGS=-Wno-error=unused-command-line-argument-hard-error-in-future


