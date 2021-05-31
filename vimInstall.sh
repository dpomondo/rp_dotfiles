#! /bin/bash

# Script to install current version of vim from source

# Remove old vim installs
sudo apt-get remove vim vim-runtime gvim vim-tiny \
vim-common vim-gui-common vim-nox gvim

# install some more deps
sudo apt-get install build-essential libncurses5-dev 

echo "Making temp directory: "
tmp_dir=$(mktemp -d -t vim-$(date +%Y-%H-%M-%S)-XXXXXXXXXX) 
echo $tmp_dir
trap "rm -rf $tmp_dir" EXIT

cd $tmp_dir  && \
git clone https://github.com/vim/vim.git && \
cd vim

make clean
make distclean

# configuration
./configure \
	--with-features=huge \
	--enable-cscope \
	--enable-multibyte \
	--enable-luainterp=dynamic \
	--enable-python3interp=dynamic \
	--with-python3-config-dir=$(python3-config --configdir) \
	--disable-gui \
	--without-x \
	--disable-netbeans \
	--enable-largefile \
	--prefix=/usr/local \
	--enable-fail-if-missing

make VIMRUNTIMEDIR=/usr/local/share/vim/vim82
sudo make install

# make the links
echo "Updating alternatives for vim:"
sudo update-alternatives --install /usr/bin/vim vim /usr/local/bin/vim 1
sudo update-alternatives --set vim /usr/local/bin/vim
update-alternatives --list vim
echo "updating alternatives for editor:"
sudo update-alternatives --install /usr/bin/editor editor /usr/local/bin/vim 1
sudo update-alternatives --install /usr/bin/editor editor /usr/bin/vim 2
sudo update-alternatives --set editor /usr/local/bin/vim
update-alternatives --list editor
echo "Updating alternatives for vi:"
sudo update-alternatives --install /usr/bin/vi vi /usr/local/bin/vim 1
sudo update-alternatives --set vi /usr/local/bin/vim
update-alternatives --list vi
