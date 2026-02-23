#!/bin/bash

export EDITOR=vim
export _JAVA_AWT_WM_NONREPARENTING=1

#fcitx
#export GTK_IM_MODULE=fcitx
#export QT_IM_MODULE=fcitx
#export XMODIFIERS=@im=fcitx

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

exec bspwm
#exec startxfce4
#export XDG_SESSION_TYPE=x11
#export GDK_BACKEND=x11
#exec gnome-session
