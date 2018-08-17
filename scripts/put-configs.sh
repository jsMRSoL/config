#!/bin/bash
MYHOME='/home/simon/.config'
GITVAR='/home/simon/.dotfiles'

# customized copy function
cp-w-dir() {
    if [[ -d "$2" ]]; then
        mkdir -p "$2"
    fi
    cp -p "$1" "$2"
}

# config files under home
    cp-w-dir $GITVAR/home/bash_aliases    $HOME/.bash_aliases
    cp-w-dir $GITVAR/home/bashrc          $HOME/.bashrc
    cp-w-dir $GITVAR/home/inputrc         $HOME/.inputrc
    cp-w-dir $GITVAR/home/profile         $HOME/.profile
    cp-w-dir $GITVAR/home/selected_editor $HOME/.selected_editor

# configs to start window manager
    cp-w-dir $GITVAR/various/dwm.desktop /usr/share/xsessions/dwm.desktop
    cp-w-dir $GITVAR/various/dwmstart    /usr/local/bin/dwmstart

# config for greeter
    cp-w-dir $GITVAR/various/lightdm-gtk-greeter.conf   /etc/lightdm/

# customized source files
    cp-w-dir $GITVAR/dwm/config.h  $HOME/.dwmsrc/
    cp-w-dir $GITVAR/dwm/config.mk $HOME/.dwmsrc/
    cp-w-dir $GITVAR/st/config.h   $HOME/.stsrc/

# configs for terminal applications
    cp-w-dir $GITVAR/mpd/mpd.conf           $MYHOME/mpd/
    cp-w-dir $GITVAR/mps-youtube/transcode  $MYHOME/mps-youtube/
    cp-w-dir $GITVAR/ncmpcpp/*              $MYHOME/ncmpcpp/
    cp-w-dir $GITVAR/newsbeuter/*           $MYHOME/newsbeuter
    cp-w-dir $GITVAR/ranger/*               $MYHOME/ranger/
    cp-w-dir $GITVAR/redshift/redshift.conf $MYHOME/
    cp-w-dir $GITVAR/rtv/rtv.cfg            $MYHOME/rtv/
    cp-w-dir $GITVAR/surfraw/conf           $MYHOME/surfraw/
    cp-w-dir $GITVAR/tmux/tmux.conf         $MYHOME/tmux/
    cp-w-dir $GITVAR/urlview/urlview        $MYHOME/
    cp-w-dir $GITVAR/vim/*                  $MYHOME/vim/
    cp-w-dir $GITVAR/w3m/*                  $MYHOME/w3m/

# myscripts
    cp-w-dir $GITVAR/scripts/*              $HOME/.local/usr/bin/

# Create links
    ln -sT $MYHOME/newsbeuter            $HOME/.newsbeuter
    ln -sT $MYHOME/tmux/tmux.conf        $HOME/.tmux.conf
    ln -sT $MYHOME/urlview               $HOME/.urlview
    ln -sT $MYHOME/vim                   $HOME/.vim
    ln -sT $MYHOME/w3m                   $HOME/.w3m

# Finish
    echo "All dotfiles copied to ~/.config/"
    echo "Links made to ~/"
    exit 0
