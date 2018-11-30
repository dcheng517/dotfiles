#! /bin/bash

# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

exec i3

sh ~/.fehbg

exec betterlockscreen -l

systemctl --user import-environment DISPLAY=:0

source ./etc/X11/xinit/xinitrc.d/50-systemd-user.sh

