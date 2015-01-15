#!/usr/bin/env bash
rm ~/.oh-my-zsh/custom/aliases.zsh || echo "There are some problems trying to locate you zsh folder"
ln -s $PWD/zsh/aliases.zsh ~/.oh-my-zsh/custom/aliases.zsh || echo "There is a problem linking your aliases"

echo "Aliases has been successfully linked"

