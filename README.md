## rp_dotfiles
### How I tell my (debian-based linux) tools what to do

An attempt to make important (well, at least *desireable*) configuration files
portable to other debian-based systems. Every raspberry pi should have a pretty
vim instance!

#### Additional shell scripts
1. vimInstall.sh should download and build vim from github source
2. createLinks.sh should create the appropriate symbolic links to allow the vimrc,
   zshrc, tmux.conf to function

#### Post-link files structure
At least, this is what we're shooting for:

````
$HOME
|----.(cloned_git_location)
|----.dotfiles -> $HOME/.(cloned_git_location)/rp_dotfiles
|    |----shell
|    |    |----(variouz zsh stuffs)
|    |----vim
|    |    |----vimrc
|----.vim
|    |----vimrc -> $HOME/.dotfiles/vim/vimrc
|----.tmux.conf -> $HOME/.dotfiles/tmux.conf
|----.zshrc -> $HOME/.dotfiles/zshrc
````

#### TODO
1. Find edge cases?
2. Fix the linking logic to be less janky
