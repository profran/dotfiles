#!/bin/bash

export EDITOR=vim
export _JAVA_AWT_WM_NONREPARENTING=1

#fcitx
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx

exec bspwm
#exec startxfce4 
