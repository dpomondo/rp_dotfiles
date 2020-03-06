# This file gets sourced by .zshrc

export ZHISTORY_LOADED=1

# -----------------------------------------------------------------------------
# History
# -----------------------------------------------------------------------------
setopt HIST_IGNORE_DUPS
setopt HIST_VERIFY              # expand, but require \r
setopt HIST_REDUCE_BLANKS
setopt INC_APPEND_HISTORY       # add line to hist. as they happen
# sharing history is less useful than you'd think
setopt SHARE_HISTORY            # z shells all have access to hist.
setopt HIST_IGNORE_SPACE
setopt HIST_NO_FUNCTIONS
HISTFILE=~/.dotfile/shell/.histfile
HISTSIZE=1000
SAVEHIST=1000
HISTCHARS='!^#'                 # let bang be bang
