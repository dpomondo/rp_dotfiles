#! python3
# coding=utf-8

# python script for formatting the present working directory, keeping only the
# last two dirs and prepending '...' if there are more than 2 dirs. Returns a
# string with formatting appropriate for use in zsh prompt expansions.
#
import os
import sys
import random

rows, columns = os.popen('stty size', 'r').read().split()

# if using tmux, multiple windows can casue a real smoosh. So
# let's compensate for that!
if int(columns) < 120:
    dir_number = 3
else:
    dir_number = 5

here = os.path.abspath(os.getcwd()).split('/')
# the var `here` will include an empty string after the split, 
# standing in for the root dir @ `/` -- so we need to subtract one
if (len(here) - 1) <= dir_number:
    res = os.path.abspath(os.getcwd())
else:
    res = "..."
    for i in range(dir_number - 1, 0, -1):
        res = res + '/' + here[i * -1]

color = random.randint(10,255)
# left = "%F{015}[%(?..(%?%))%f %F{54}%K{073}%{$(echo '\e[3m')%}"
# right = "%{$(echo '\e[23m')%}%k%f %F{073}%t ]%f"
# left = "%{%F{015}%}[ %{%f%K{115}%}"
left = "%{%F{015}%}[ %{%f%K{"+ str(color) + "}%}"
# right = "%{%k%F{015}%} %t ]%{%f%}"
right = "%{%k%F{015}%} ]%{%f%}"
left_ital = "%{\e[3m%}"
right_ital = "%{\e[23m%}"

out = left + left_ital + res + right_ital + right
sys.stdout.write(out)
