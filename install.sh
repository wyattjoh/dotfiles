#!/bin/bash

files=(.aliases .gitconfig .gitignore .zshrc)

for file in "${files[@]}"
do
  ln -s "$PWD/$file" "$HOME/$file"
done