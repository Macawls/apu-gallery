#!/usr/bin/env bash

# enter list of wallpapers into wallpaper-preview.md
ls apu/ > index.md
# add image preview command thing for markdown in prefix and suffix
sed -i -e 's/^/![](apu\//' index.md
sed -i 's/$/\)/' index.md
# page heading 
sed -i '1 i\# Cute pepes' index.md
# empty line
sed -i '/# Wallpapers/ a \ ' index.md
