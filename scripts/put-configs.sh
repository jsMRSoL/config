#!/bin/bash
MYHOME='/home/simon'
GITVAR='/home/simon/.dotfiles'

# config files under home
cp -p $GITVAR/home/inputrc $MYHOME/.inputrc 
cp -p $GITVAR/home/bash_aliases $MYHOME/.bash_aliases 
cp -p $GITVAR/home/bashrc $MYHOME/.bashrc 
cp -p $GITVAR/home/selected_editor $MYHOME/.selected_editor 
cp -p $GITVAR/home/Xdefaults $MYHOME/.Xdefaults 
cp -p $GITVAR/home/profile $MYHOME/.profile 
cp -p $GITVAR/home/vimrc $MYHOME/.vimrc 
cp -p $GITVAR/home/inputrc $MYHOME/.inputrc 
cp -p $GITVAR/home/urlview $MYHOME/.urlview 

# configs to start window manager
cp -p /home/simon/.dotfiles/various/dwm.desktop /usr/share/xsessions/dwm.desktop 
cp -p $GITVAR/various/dwmstart /usr/local/bin/dwmstart  

# customized source files
cp -p $GITVAR/dwm/config.h $MYHOME/.dwmsrc/
cp -p $GITVAR/dwm/config.mk  $MYHOME/.dwmsrc/
cp -p $GITVAR/st/config.h  $MYHOME/.stsrc/
cp -p $GITVAR/st/st-alpha-0.7.diff  $MYHOME/.stsrc/

# configs for terminal applications
cp -p $GITVAR/mpd/mpd.conf  $MYHOME/.config/mpd/
cp -p $GITVAR/ncmpcpp/config  $MYHOME/.config/ncmpcpp/
cp -p $GITVAR/ncmpcpp/bindings  $MYHOME/.config/ncmpcpp/
cp -p $GITVAR/ranger/commands.py  $MYHOME/.config/ranger/
cp -p $GITVAR/ranger/rc.conf  $MYHOME/.config/ranger/
cp -p $GITVAR/ranger/rifle.conf  $MYHOME/.config/ranger/
cp -p $GITVAR/ranger/scope.sh  $MYHOME/.config/ranger/
cp -p $GITVAR/mps-youtube/transcode  $MYHOME/.config/mps-youtube/
cp -pr $GITVAR/vim/*  $MYHOME/.config/vim/
