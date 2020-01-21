#!/bin/bash

bashLocation=$(pwd)/bash/.bashrc
tmuxLocation=$(pwd)/tmux/.tmux.conf
vimrcLocation=$(pwd)/vim/.vimrc
fontsLocation=$(pwd)/fonts

function append_bash_to_local {
  if grep -q $bashLocation $HOME/.bashrc
  then
    echo "Bash file already linked"
  else 
    echo "" >> $HOME/.bashrc
    echo "if [ -f "$bashLocation" ]; then" >> $HOME/.bashrc
    echo "  . "$bashLocation >> $HOME/.bashrc
    echo "fi" >> $HOME/.bashrc
    echo "Bash file linked"
  fi
}

function append_tmux_to_local {
  if grep -q $tmuxLocation $HOME/.tmux.conf
  then
    echo "Tmux already linked"
  else 
    echo "" >> $HOME/.tmux.conf
    echo "source-file "$tmuxLocation >> $HOME/.tmux.conf
    echo "Tmux linked"
  fi 
  yes | cp $(pwd)/tmux/.tmux-powerlinerc $HOME
}

function append_vimrc_to_local {
  if grep -q $vimrcLocation $HOME/.vimrc
  then
    echo "Vimrc already linked"
  else 
    echo "" >> $HOME/.vimrc
    echo "so "$vimrcLocation >> $HOME/.vimrc
    echo "Vimrc linked"
  fi
}

function make_link_for_fonts {
  mkdir -p $HOME/.fonts
  if [ -L $HOME/.fonts/fonts ]
  then
    echo "Fonts already linked"
  else 
    ln -s $fontsLocation $HOME/.fonts
    echo "Fonts linked"
  fi
}

function print_help {
    echo "install.sh [-abfghtv]"
    echo "  -a: init all"
    echo "  -b: link bashrc"
    echo "  -f: link font"
    echo "  -g: init git submodules, neccessary for vim and tmux pluginmanager, and tmux powerline"
    echo "  -h: help"
    echo "  -t: link tmux"
    echo "  -v: link vimrc"
}

while getopts ":atbvfgh" arg; do
  case "${arg}" in
    a) 
      git submodule update --init --recursive
      append_bash_to_local
      append_tmux_to_local
      append_vimrc_to_local
      make_link_for_fonts
      ;;
    g)  
      git submodule update --init --recursive
      ;;
    t)
      append_tmux_to_local
      ;;
    b)
      append_bash_to_local
      ;;
    v)
      append_vimrc_to_local
      ;;
    f)
      make_link_for_fonts
      ;;
    h)
      print_help
      ;;
    *)
      print_help
      ;;
  esac
done

