#!/usr/bin/env bash

echo "Checking if Oh My ZSH is installed..."

if [ -d ~/.oh-my-zsh ]; then
    echo "Oh My ZSH is installed."
    echo "Linking custom aliases..."
    
    echo "Checking if aliases already exist..."
    if [ -a ~/.oh-my-zsh/custom/aliases.zsh ]; then
        rm ~/.oh-my-zsh/custom/aliases.zsh
        ln -s $PWD/zsh/aliases.zsh ~/.oh-my-zsh/custom/aliases.zsh
        echo "Aliases are linked successfully."
    else
        ln -s $PWD/zsh/aliases.zsh ~/.oh-my-zsh/custom/aliases.zsh
        echo "Aliases are linked successfully."
    fi
else 
    echo "Please install Oh My ZSH."
fi