# this file gets sourced by ~/.zshrc
##                __
##     ____  ____/ /_
##    /_  / / __/ __ \
##     / /_(__ ) / / /
##    /___/___/_/ /_/
##
# Antigen and plugins live here -----------------------------------------------
# Antigen & friends get sourced first because they are clumsy, intrusive, and
# override almost anything and everything I set 
#
# ANTIGEN_DEFAULT_REPO_URL='https://github.com/robbyrussell/oh-my-zsh.git'
# ADOTDIR='$HOME/.antigen'
# ANTIGEN_LOG=$HOME/.antigen/antigen.log

# source $HOME/.antigen/antigen.zsh
# ANTIGEN_LOG=~/.antigen/antigen.log

# source ~/.antigen/antigen.zsh

#   delete ev'ything between these lines
### load the oh-my-zsh library
##antigen use oh-my-zsh

## basic stuffs from default repo
## antigen bundle robbyrussell/oh-my-zsh lib/
#antigen bundle git
#antigen bundle pip
#antigen bundle python
## antigen bundle virtualenv     # kill'd

## from somewhere else
#antigen bundle zsh-users/zsh-syntax-highlighting
##
## make the stuff happen
#antigen apply
