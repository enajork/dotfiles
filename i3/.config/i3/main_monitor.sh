#!/bin/bash
printf "! set the main monitor\n*MAIN_MONITOR: rdp$1\n" >~/.Xresources
xrdb ~/.Xresources
