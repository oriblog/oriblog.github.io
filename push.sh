#!/bin/bash

echo -e "\033[0;32mDeploying updates to GitHub...\033[0m"

# Genterate file statis
git add . # if using a theme, replace by `hugo -t <yourtheme>`


# Buat sebuah commit baru
msg="rebuilding site `date`"
if [ $# -eq 1 ]
  then msg="$1"
fi
git commit -m "$msg"

# git b
git branch -M master

# Push atau puload ke Github
git push -u origin master

# Balik ke direktori sebelumnya
