#! python3
# coding=utf-8

# python script for formatting the present working directory, keeping only the
# last two dirs and prepending '...' if there are more than 2 dirs. Returns a
# string with formatting appropriate for use in zsh prompt expansions.
#
import os
import sys

here = os.path.abspath(os.getcwd()).split('/')
if len(here) <= 5:
    res = os.path.abspath(os.getcwd())
    # res = os.getcwd()
else:
    res = '/'.join(['...', here[-4], here[-3], here[-2], here[-1]])

# left = "%F{015}[%(?..(%?%))%f %F{54}%K{073}%{$(echo '\e[3m')%}"
# right = "%{$(echo '\e[23m')%}%k%f %F{073}%t ]%f"
# left = "%{%F{015}%}[ %{%f%K{115}%}"
left = "%{%F{015}%}[ %{%f%K{195}%}"
right = "%{%k%F{015}%} %t ]%{%f%}"
left_ital = "%{\e[3m%}"
right_ital = "%{\e[23m%}"

out = left + left_ital + res + right_ital + right
sys.stdout.write(out)
