####################
# Export stuff
####################
export DOTFILES_DIR=$(dirname $(dirname ${BASH_SOURCE[0]}))
export PAGER=less
export LESS="--ignore-case --LONG-PROMPT --squeeze-blank-lines --HILITE-UNREAD --search-skip-screen --RAW-CONTROL-CHARS --quit-if-one-screen --no-init"
export LANG=en_US.UTF-8

if [ "$TERM" = "xterm" ]; then
  export TERM=xterm-256color
fi
if [ "$TERM" = "screen" -o "$TERM" = "screen-256color" ]; then
  export TERM=screen-256color
  unset TERMCAP
fi

#####################
# Fuction for adding to path
# Will not add if argument already exists in path
#####################
addToPath () {
  if ! echo "$PATH" | /bin/grep -Eq "(^|:)$1($|:)" ; then
    PATH="$1:$PATH"
  fi
}
#####################
# PROMPT
#####################
MYPSDIR_AWK=$(cat << 'EOF'
  BEGIN { FS = OFS = "/" }
  { 
    sub(ENVIRON["HOME"], "~");
    if (length($0) > 36 && NF > 6)
      print $1,$2,".." NF-5 "..",$(NF-2),$(NF-1),$NF
    else
      print $0
  }
EOF
)
# shorten the current directory path
export MYPSDIR='$(echo -n "$PWD" | awk "$MYPSDIR_AWK")'

PROMPT_COMMAND=__prompt_command # Func to gen PS1 after CMDs
__prompt_command() {
  local EXIT="$?"             # This needs to be first
  local PS_SYMBOL='❯'
  local RCol='\[\e[0m\]'
  local Red='\[\e[0;31m\]'
  local Gre='\[\e[0;32m\]'
  PS1="\n ${Gre}$(eval "echo ${MYPSDIR}")${RCol}"
  if git rev-parse --git-dir > /dev/null 2>&1; then
    PS1+=" on "
    PS1+="${Red}$(basename `git rev-parse --show-toplevel`)${RCol}"
  fi
  PS1+="\n"
  if [ $EXIT != 0 ]; then
    PS1+="${Red} ${PS_SYMBOL} ${RCol}"      # Add red if exit code non 0
  else
    PS1+="${Gre} ${PS_SYMBOL} ${RCol}"
  fi
}

#####################
# Source aliases
#####################
if [ -f ~/dotfiles/bash/.bashrc_aliases ]; then
  . ~/dotfiles/bash/.bashrc_aliases
fi

#####################
# Source work stuff
#####################
if [ -f ~/dotfiles/bash/.bashrc_work ]; then
  . ~/dotfiles/bash/.bashrc_work
fi

###################
# Auto start tmux
###################
# If tmux exists, and we are in an interactive shell, and tmux doesnt try do run within itself
if command -v tmux &> /dev/null && [ -n "$PS1" ] && [[ ! "$TERM" =~ screen ]] && [[ ! "$TERM" =~ tmux ]] && [ -z "$TMUX" ]; then
  [ -z "$TMUX"  ] && { tmux attach || exec tmux new-session && exit;}
fi




