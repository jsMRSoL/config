#!/bin/bash
MYHOME='/home/simon/.config'
GITVAR='/home/simon/.dotfiles'

# customized copy function
cp-w-dir() {
    if [[ ! -d "${@:-1}" ]]; then
        mkdir -p "${@:-1}"
    fi
    cp -pr "$@"
}

# config files under home
    cp -p $GITVAR/home/bash_aliases    $HOME/.bash_aliases
    cp -p $GITVAR/home/bashrc          $HOME/.bashrc
    cp -p $GITVAR/home/inputrc         $HOME/.inputrc
    cp -p $GITVAR/home/profile         $HOME/.profile
    cp -p $GITVAR/home/selected_editor $HOME/.selected_editor

# configs to start window manager
    cp-w-dir $GITVAR/various/dwm.desktop /usr/share/xsessions/
    cp-w-dir $GITVAR/various/dwmstart    /usr/local/bin/

# config for greeter
    cp-w-dir $GITVAR/various/lightdm-gtk-greeter.conf   /etc/lightdm/

# customized source files
    cp-w-dir $GITVAR/dwm/config.h  $HOME/.dwmsrc/
    cp-w-dir $GITVAR/dwm/config.mk $HOME/.dwmsrc/
    cp-w-dir $GITVAR/st/config.h   $HOME/.stsrc/

# configs for terminal applications
    cp -pr $GITVAR/mpd         $MYHOME/
    cp -pr $GITVAR/mps-youtube $MYHOME/
    cp -pr $GITVAR/ncmpcpp     $MYHOME/
    cp -pr $GITVAR/newsbeuter  $MYHOME/
    cp -pr $GITVAR/ranger      $MYHOME/
    cp -pr $GITVAR/redshift    $MYHOME/
    cp -pr $GITVAR/rtv         $MYHOME/
    cp -pr $GITVAR/surfraw     $MYHOME/
    cp -pr $GITVAR/tmux        $MYHOME/
    cp -pr $GITVAR/urlview     $MYHOME/
    cp -pr $GITVAR/vim         $MYHOME/
    cp -pr $GITVAR/w3m         $MYHOME/

# myscripts
    cp -pr $GITVAR/scripts/* $HOME/.local/usr/bin/

# Create links
    ln -sT $MYHOME/newsbeuter            $HOME/.newsbeuter
    ln -sT $MYHOME/tmux/tmux.conf        $HOME/.tmux.conf
    ln -sT $MYHOME/urlview/urlview       $HOME/.urlview
    ln -sT $MYHOME/vim                   $HOME/.vim
    ln -sT $MYHOME/w3m                   $HOME/.w3m

# Finish
    echo "All dotfiles copied to ~/.config/"
    echo "Links made to ~/"
    exit 0
