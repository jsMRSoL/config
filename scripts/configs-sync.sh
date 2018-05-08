#!/bin/bash
MYHOME='/home/simon'
GITVAR='/home/simon/.dotfiles'

# config files under home
cp -p $MYHOME/.inputrc $GITVAR/home/inputrc
cp -p $MYHOME/.bash_aliases $GITVAR/home/bash_aliases
cp -p $MYHOME/.bashrc $GITVAR/home/bashrc
cp -p $MYHOME/.selected_editor $GITVAR/home/selected_editor
cp -p $MYHOME/.Xdefaults $GITVAR/home/Xdefaults
cp -p $MYHOME/.profile $GITVAR/home/profile
cp -p $MYHOME/.vimrc $GITVAR/home/vimrc
cp -p $MYHOME/.urlview $GITVAR/home/urlview

# configs to start window manager
cp -p /usr/share/xsessions/dwm.desktop /home/simon/.dotfiles/various/dwm.desktop
cp -p /usr/local/bin/dwmstart $GITVAR/various/dwmstart

# customized source files
cp -p $MYHOME/.dwmsrc/config.h $GITVAR/dwm/
cp -p $MYHOME/.dwmsrc/config.mk $GITVAR/dwm/
cp -p $MYHOME/.stsrc/config.h $GITVAR/st/
cp -p $MYHOME/.stsrc/st-alpha-0.7.diff $GITVAR/st/

# configs for terminal applications
cp -p $MYHOME/.config/mpd/mpd.conf $GITVAR/mpd/
cp -p $MYHOME/.config/ncmpcpp/config $GITVAR/ncmpcpp/
cp -p $MYHOME/.config/ncmpcpp/bindings $GITVAR/ncmpcpp/
cp -p $MYHOME/.config/ranger/commands.py $GITVAR/ranger/
cp -p $MYHOME/.config/ranger/rc.conf $GITVAR/ranger/
cp -p $MYHOME/.config/ranger/rifle.conf $GITVAR/ranger/
cp -p $MYHOME/.config/ranger/scope.sh $GITVAR/ranger/
cp -p $MYHOME/.config/mps-youtube/transcode $GITVAR/mps-youtube/
cp -pr $MYHOME/.config/vim/* $GITVAR/vim/
