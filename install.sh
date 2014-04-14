#todo: add the content of example readme from the post in vimcasts.org
#
#—
#not use the submodule strategy..
#don't run git clone inside bunlde, or you will add a submodule
#
#
#ln -s vimrc ~/.vimrc    # right?
#ln -s ctags ...      !!! use full path when create slink
#
#
#ctags configuration file doesn't support comment...
#one option a line in ctags configuration file
#
#
# 安装exuberant ctags 
# 因为zypper搜不到；所以下个源代码包； ./configure   make    make install


Installation:

    git clone git://github.com/nelstrom/dotvim.git ~/.vim

Create symlinks:

    ln -s ~/.vim/vimrc ~/.vimrc
    ln -s ~/.vim/gvimrc ~/.gvimrc

Switch to the `~/.vim` directory, and fetch submodules:

    cd ~/.vim
    git submodule init
    git submodule update



#check we are in right directory

#check/install ctags

#if ~/.vim exists, rename it

#if ~/.vimrc and ~/.gvimrc exist, rename them

#cp the repository as ~/.vim

#create symbol links for .vimrc, .gvimrc, and .ctags



