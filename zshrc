##                __
##     ____  ____/ /_
##    /_  / / __/ __ \
##     / /_(__ ) / / /
##    /___/___/_/ /_/
##
## Configuration for zsh -- the shell with the power of Dragonball!
#
# -----------------------------------------------------------------------------
# automatic startup files loading order:
# -----------------------------------------------------------------------------
# x                                 # 'x' means non-existant
# x  ~/.zshenv                      # environment vars, like $PATH
# x  ~/.zprofile                    # bleh
#    ~/.zshrc                       # user settings and prefs for interactive shells
# x  ~/.zlogin                      # things that need to be called after .zshrc
# x  ... shutdown files:
# x  ~/.zlogout                     # called on logout
# x  /etc/zlogout                   #
#
# -----------------------------------------------------------------------------
# Sourcing Sub-Files
# -----------------------------------------------------------------------------
zmodload zsh/datetime               # need my strftime!
#
# files loaded, in order:
#   ~/.shell/antigen.zsh
#   ~/.shell/color.zsh
#   ~/.shell/profile.zsh
#   ~/.shell/zalias.zsh
#   ~/.shell/zcomp.zsh
#   ~/.shell/zfunctions.zsh
#   ~/.shell/zhistory.zsh
#   ~/.shell/zoptions.zsh
#   ~/.shell/zprompt.zsh
#
# only load the subscripts if:
#   1.  $INITIAL_ZSHRC is unset (i.e. fresh zsh)
#   2.  the write time of a subscript is younger than the last 
#       call to source this file
# Hmmm... there should be a check to see if the files in ~/.shell are the RIGHT
# files, and only load those that both exist AND whitelisted
for fil in ~/.dotfiles/shell/*.zsh ; do
    if [[ -z $"INITIAL_ZSHRC" ]] \
        || [[ "$CURRENT_ZSHRC_LOADTIME" < "$(stat -c %Y $fil)" ]] ;
    then
        source $fil
        echo "done reading $fil"
    else
        echo "...$fil already loaded"
    fi
done

# vars for logic
INITIAL_ZSHRC=1              # flag the first loading of this file
CURRENT_ZSHRC_LOADTIME=$EPOCHSECONDS
