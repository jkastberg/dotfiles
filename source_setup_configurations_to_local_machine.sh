#!/bin/bash

bashLocation=$(pwd)/bash/.bashrc.custom
tmuxLocation=$(pwd)/tmux/.tmux.conf
vimrcLocation=$(pwd)/vim/.vimrc
fontsLocation=$(pwd)/fonts

function append_bash_to_local {

  if grep -q $bashLocation $HOME/.bashrc.user 
  then
    echo "Bash file already linked"
  else 
    echo "" >> $HOME/.bashrc.user
    echo "if [ -f "$bashLocation" ]; then" >> $HOME/.bashrc.user
    echo "  . "$bashLocation >> $HOME/.bashrc.user
    echo "fi" >> $HOME/.bashrc.user
    echo "Bash file linked"
  fi
}

function append_tmux_to_local {

  if  grep -q $tmuxLocation $HOME/.tmux.conf
  then
    echo "Tmux already linked"
  else 
    echo "" >> $HOME/.tmux.conf
    echo "source-file "$tmuxLocation >> $HOME/.tmux.conf
    echo "Tmux linked"
  fi
}

function append_vimrc_to_local {

  if  grep -q $vimrcLocation $HOME/.vimrc
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

while getopts ":tbvf" arg; do
  case "${arg}" in
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
    *)
        echo "[-t] [-b] [-v] [-f]"
        ;;
  esac
done

