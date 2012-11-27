#!/bin/bash

BACKUPDIR=~/.dotfiles/backup/
#install vimrc


if [[ ! -L "$HOME/.vimrc" ]]
then
  if [[ -e "$HOME/.vimrc" ]]
  then
    echo "installing vimrc, moving old to $BACKUPDIR"
    mv $HOME/.vimrc $BACKUPDIR
  fi
  ln -s $HOME/.dotfiles/dot/vimrc $HOME/.vimrc

  mkdir -p $HOME/.vim/colors
  ln -s $HOME/.dotfiles/scripts/solarized.vim $HOME/.vim/colors/solarized.vim
else
  echo "vimrc already installed"
fi

echo "installing terminator"
mkdir -p $HOME/.config/terminator
ln -s $HOME/.dotfiles/dot/terminator.config $HOME/.config/terminator/config

echo "installing PS1"
echo "if [[ -f \"\$HOME/.dotfiles/scripts/ps1\" ]]
then
  export PROMPT_COMMAND=\"source \$HOME/.dotfiles/scripts/ps1\"
fi
" >> $HOME/.bashrc
