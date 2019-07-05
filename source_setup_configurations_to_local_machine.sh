#!/bin/bash

bashLocation=$(pwd)/bash/.bashrc.custom
tmuxLocation=$(pwd)/tmux/.tmux.conf
vimrcLocation=$(pwd)/vim/.vimrc
fontsLocation=$(pwd)/fonts

function append_bash_to_local {

  if [ grep -q $bashLocation $HOME/.bashrc.user ]
  then
    echo "Bash file already linked"
  else 
    echo "Bash not linked"
  fi
}

function append_tmux_to_local {

  echo "$tmuxLocation"
}

function append_vimrc_to_local {

  echo "$vimrcLocation"
}

function make_link_for_fonts {

  mkdir -p $HOME/.fonts
  if [ ! -L $HOME/.fonts/fonts ]
  then
    en -s $fontsLocation $HOME/.fonts
  fi
}

append_bash_to_local
append_tmux_to_local
append_vimrc_to_local
make_link_for_fonts

