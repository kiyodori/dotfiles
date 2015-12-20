#!/bin/sh

DOT_DIR="$HOME/.dotfiles"
DOT_FILES=( .gitconfig .tmux.conf .vim/conf .vim/indent .vimrc .zshrc_config .zshrc .zshrc.mine )

link() {
  from="$1"
  to="$2"
  echo "Linking '$from' to '$to'"
  rm -f "$to"
  ln -s "$from" "$to"
}

for file in ${DOT_FILES[@]}
do
  link "$DOT_DIR/$file" "$HOME/$file"
done
