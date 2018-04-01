#!/bin/bash
MYHOME='/home/simon'
GITVAR='/home/simon/.dotfiles/various'

cp -o $MYHOME/.inputrc $GITVAR/home/inputrc
cp -o $MYHOME/.bash_aliases $GITVAR/home/bash_aliases
cp -o $MYHOME/.bashrc $GITVAR/home/bashrc
cp -o $MYHOME/.selected_editor $GITVAR/home/selected_editor
cp -o $MYHOME/.Xdefaults $GITVAR/home/Xdefaults
cp -o $MYHOME/.profile $GITVAR/home/profile
cp -o $MYHOME/.vimrc $GITVAR/home/vimrc
cp -o $MYHOME/.inputrc $GITVAR/home/inputrc

cp -o /usr/share/xsessions/dwm.desktop /home/simon/.dotfiles/various/dwm.desktop
cp -o /usr/local/bin/dwmstart $GITVAR/dwmstart

