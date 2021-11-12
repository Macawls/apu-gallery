#!/usr/bin/env bash

# list of images
ls apu/ > index.md
# add image preview command thing for markdown in prefix and suffix
sed -i -e 's/^/![](apu\//' index.md
sed -i 's/$/\)/' index.md
# page heading 
sed -i '1 i\## images' index.md

#github pages
sed -i '1 s/^/---\n/' index.md 
sed -i '2 s/^/title: "Henlo fren"\n/' index.md
sed -i '3 s/^/permalink: \n/' index.md 
sed -i '4 s/^/layout: default \n/' index.md 
sed -i '5 s/^/---\n/' index.md
