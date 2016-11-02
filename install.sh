#!/bin/bash
#
# Script to install my personal Vim settings and plugins 
# 

VUNDLE_REPO_URL=https://github.com/gmarik/Vundle.vim.git
VUNDLE_INSTALL_DIR=~/.vim/bundle/Vundle.vim
MONOKAI_INSTALL_DIR=~/.vim/colors

# Supports Ubuntu, Fedora, and OSX
if [[ "$OSTYPE" == "linux-gnu" ]]; then
	OS=$(lsb_release -si) # Ubuntu, Fedora, etc...
elif [[ "$OSTYPE" == "darwin"* ]]; then
	OS="OSX"
else
	echo "Install Failed: Unsupported OS or distribution"	
	exit 1
fi

# Install Vim and CScope
if [[ $OS == "Ubuntu" ]]; then
	sudo apt-get update
	sudo apt-get install -y vim cscope
elif [[ $OS == "Fedora" ]]; then
	sudo yum check-update
	sudo yum install -y vim cscope
elif [[ $OS == "OSX" ]]; then
	brew install macvim --with-override-system-vim
	brew install cscope
fi	

# Install Vundle plugin manager
if [ ! -d $VUNDLE_INSTALL_DIR ]; then
	git clone $VUNDLE_REPO_URL $VUNDLE_INSTALL_DIR
fi

# Backup .vimrc if it already exists
if [ -f ~/.vimrc ]; then mv ~/.vimrc ~/.vimrc.bak; fi

# Copy personal settings to correct locations
cp vimrc ~/.vimrc 
mkdir -p $MONOKAI_INSTALL_DIR
cp monokai.vim $MONOKAI_INSTALL_DIR

# Install Vundle Plugins from .vimrc
vim +PluginInstall +qall

