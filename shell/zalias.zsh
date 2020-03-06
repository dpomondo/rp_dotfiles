# this gets sourced by ~/.zshrc

# -----------------------------------------------------------------------------
# Alias -- for when you want the one thing to be that other thing
# -----------------------------------------------------------------------------
# export LS_OPTIONS='-phG --color=yes'
alias ls='ls -phG --color=yes'
alias ll='ls -lphG --color=yes'    # long-style, colors and '/' for dirs
alias la='ls -lAphG --color=yes'   # same, but with hidden files
alias ..='cd ..'                # up...
alias ...='cd ../..'            # ... up...
alias ....='cd ../../..'        # ... and away!

alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
# gnu for you and noe for me! gawk for awk!
# alias date='gdate'
# alias awk='gawk'                  # is this a good idea? I have no clue
