# This gets sources by .zshrc
#
# -----------------------------------------------------------------------------
# Prompt! Woo baby!
# -----------------------------------------------------------------------------
autoload -U promptinit
promptinit
setopt PROMPT_SUBST             # Enable... ?? Command substitution?
#
# left prompt [PS1] -----------------------------------------------------------
# original:
# PS1="%F{57}[%f%F{magenta}%B%n%b%f %F{cyan}%2~%f%F{57}]%f%# "
# PS1="$(virtualenv_info)%F{57}[ %f%F{magenta}%B%n%b%f %F{57}]%f%# "
PS1="%F{57}[ %f%F{magenta}%B%n%b%f %F{57}]%f%# "
#
# right prompt [RPS1] --------------------------------------------------------- 
#
# so what the hell is going on? There are no prompt expansion hashes for
# italics, BUT 'echo' can process the escape sequences. So the ugly monstrosity
# that is `%{$(echo '\e[3m')%}` is a NON-PRINTING -- %{...%} -- escape
# sequence -- \e[3m -- placed in a command expansion -- $(...) -- and closed
# with -- \e[23m
# RPS1="%F{015}[%(?..(%?%))%f %F{54}%K{073}%{$(echo '\e[3m')%}%3/%{$(echo '\e[23m')%}%k%f %F{015}%t ]%f"

# or we can just send all the work to an external function...
RPS1='$(truncated_pwd)'
