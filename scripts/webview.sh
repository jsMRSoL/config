#!/bin/bash

webcli() { w3m "$1" ;}
webgui() { waterfox "$1" 2&>/dev/null & disown ;}
mpvvid() { mpv --quiet "$1" 2&>/dev/null & disown ;}
mpvgif() { mpv --quiet --loop "$1" 2&>/dev/null & disown ;}
pdfshow() { mupdf "$1" 2&>/dev/null & disown ;}
filedl() { wget "$1" 2&>/dev/null & disown ;}
imageshow() { sxiv -a -s f -- "$1" 2&>/dev/null & disown ;}

# dmenu function
# The URL will be shown visually in 30 characters or less.
ask() {
x=$(echo -e "w3m\nwaterfox\nmpv\nmupdf\nwget\nsxiv" | dmenu -i -p "How to open?")

case "$x" in
	w3m) webcli "$1" ;;
	waterfox) webgui "$1" ;;
	mpv) mpvvid "$1" ;;
	mupdf) pdfshow "$1" ;;
	wget) filedl "$1" ;;
	sxiv) imageshow "$1" ;;
esac
}

# Get the extension and try to decide what to do.
# If all else fails, ask the user.
ext="${1##*.}"
mpvFiles="mkv mp4 webm"
imageFiles="png jpg jpeg jpe gif"
wgetFiles="mp3 flac opus mp3?source=feed"
pdfFiles="pdf"

if echo $imageFiles | grep -w $ext > /dev/null; then
	imageshow "$1"
elif echo $mpvFiles | grep -w $ext > /dev/null; then
	mpvvid "$1"
elif echo $wgetFiles | grep -w $ext > /dev/null; then
	filedl "$1"
elif echo $pdfFiles | grep -w $ext > /dev/null; then
	pdfshow "$1"
elif [[ "$1" == *"youtu"* ]]; then
	mpvvid "$1"
else
	ask "$1" 
fi

