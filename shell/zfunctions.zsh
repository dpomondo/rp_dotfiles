# file:zfunctions.zsh
##                __
##     ____  ____/ /_
##    /_  / / __/ __ \
##     / /_(__ ) / / /
##    /___/___/_/ /_/
##
## Configuration for zsh -- the shell with the power of Dragonball!

# Function definitions live here
#
# python helper func for truncating current working dir
function truncated_pwd {
    echo $(~/.dotfiles/shell/helper_funcs/cwd_func.py) 2>/dev/null
}

# function current_temp {
    # echo $(returner.py) 2>/dev/null
# }
# the following were stolen from:
# http://www.dsfcode.com/using-processing-via-the-command-line/
# ...and are used to run processing sketches from the command line
# function prun {
#      if [[ $1 != *'/..'* && $1 != *'../'* && $1 != '.'* && $1 != '/'* ]]
#      then
#           [[ $1 == "" ]] && sketch=`pwd`;
#           [[ $1 != "" ]] && sketch=`pwd`"/"`echo $1 | sed 's;/$;;'`;
 
#           processing-java --run --sketch="$sketch" --output="$sketch/.tmp_output";
#           rm -r "$sketch/.tmp_output";
#      else
#           echo 'ERROR: Please enter the path to your sketch relative to your current location, ".", "..", "~", and full paths will not work with this function';
#           echo '       If you are in the sketch folder you want to run it, simply exicute prun with no arguments';
#      fi
# }
 
# function psetup {
#      sketch=$1;
#      mkdir $sketch; touch $sketch/$sketch.pde; cd $sketch;
# }

# stolen from:
# http://zanshin.net/2012/08/01/my-zsh-setup-for-python-virtualenv/
#
# purpose:
# return virtaulenv info (which eventually moves into the left propmpt)
# function virtualenv_info {
#     [ $VIRTUAL_ENV ] && echo '('`basename $VIRTUAL_ENV`') '
# }
