#!/usr/bin/env bash
find -name '*.png' -or -name '*.jpg' -or -name '*.jpeg' | grep resized | xargs rm
find -name '*.png' -or -name '*.jpg' -or -name '*.jpeg' | grep -v resize | xargs -I{} bash -c 'I={};O=${I%.*}; ext=${I##*.};O=$O-resized.$ext; convert $I -resize 300x300\> -size 300x300 xc:white +swap -gravity center -composite $O'
