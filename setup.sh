#!/bin/sh

DOT_FILES=( .gitconfig .tmux.conf .vim/conf .vim/indent .vimrc .zshrc_config .zshrc )

for file in ${DOT_FILES[@]}
do
    ln -sf $HOME/dotfiles/$file $HOME/$file
done
