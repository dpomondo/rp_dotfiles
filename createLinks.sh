#! /bin/bash

# set up links so cloned dotfiles from github are in the right place

echo "Setting up links..."

# Setting up primary symbolic link
if [[ -e ~/.dotfiles ]]
then
	echo ".dotfiles exists!"
	# exit
else 
	echo "Linking into $HOME/.dotfiles"
	ln -s ~/.dotfiles_from_git/rp_dotfiles ~/.dotfiles
fi

# vimrc link

if [[ ! -e ~/.vim ]]
then
	mkdir ~/.vim
fi

if [[ -d ~/.vim ]]		# test if ~/.vim is a directory
then
	echo "Linking vimrc into ~/.vim"
else 
	echo "Your ~/.vim is weird"
	exit
fi

if [[ -e ~/.vim/vimrc ]]	# test if target exists
then
	mv ~/.vim/vimrc ~/.vim/vimrc.old.$$
fi
ln -s ~/.dotfiles/vim/vimrc ~/.vim/vimrc

# tmux and zshrc
echo "Linking tmux.conf"
if [[ -e ~/.tmux.conf ]]	# test if target exists
then
	mv ~/.tmux.conf ~/.tmux.conf.old.$$
fi
ln -s ~/.dotfiles/tmux.conf ~/.tmux.conf

echo "Linking ~/.zshrc"
if [[ -e ~/.zshrc ]]		# test if target exists
then
	# echo "~/.zshrc already exists"
	mv ~/.zshrc ~/.zshrc.old.$$ 
fi
ln -s ~/.dotfiles/zshrc ~/.zshrc
