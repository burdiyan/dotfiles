#!/usr/bin/env bash

read -p "This will delete your custom aliases if you had them. Are you sure [y/N]?" -n 1 -r
echo
echo

if [[ $REPLY =~ ^[Yy]$ ]]
then
    if [ -d ~/.oh-my-zsh ]; then
        if [ -a ~/.oh-my-zsh/custom/aliases.zsh ]; then
            rm ~/.oh-my-zsh/custom/aliases.zsh
            cat $PWD/zsh/aliases/*.zsh > ~/.oh-my-zsh/custom/aliases.zsh
            echo "Aliases was created successfully!"
        else
            cat $PWD/zsh/aliases/*.zsh > ~/.oh-my-zsh/custom/aliases.zsh
            echo "Aliases was created successfully!"
        fi
    else 
        echo "Please install Oh My ZSH."
    fi
else
    echo "Aborted!"
fi