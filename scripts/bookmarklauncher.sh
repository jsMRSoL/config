#!/bin/bash
file="/home/simon/.bookmarks"
[ ! -e $file ] && notify-send "Cannot find bookmarks file" && exit
choice=$( awk '{print $1}' $file | dmenu -l 10 -p "Choose bookmark: ")
[ -z "$choice" ] && exit
search='/^'"$choice"'/{$1 = ""; print $0}'
cmd=$( awk "$search" "$file" )
# echo $cmd
/bin/bash -c "$cmd" & disown


