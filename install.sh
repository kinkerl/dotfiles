#!/bin/bash

BACKUPDIR=~/.dotfiles/backup/
#install vimrc


if [[ ! -L "$HOME/.vimrc" ]]
then
  echo "installing vimrc, moving old to $BACKUPDIR"
  mv $HOME/.vimrc $BACKUPDIR
  ln -s $HOME/.dotfiles/dot/vimrc $HOME/.vimrc
else
  echo "vimrc already installed"
fi


echo "installing PS1"
echo "if [[ -f \"\$HOME/.dotfiles/scripts/ps1\" ]]
then
  export PROMPT_COMMAND=\"source \$HOME/.dotfiles/scripts/ps1\"
fi
" >> $HOME/.bashrc
