# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

HISTCONTROL=ignoredups

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=5000
HISTFILESIZE=5000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

source $HOME/bin/git-prompt.sh

if [ -f ~/.env_variables ]; then
  source ~/.env_variables
fi

PROMPT_COMMAND=__prompt_command

__prompt_command() {
  EXIT_CODE="$?";
  CURRENT_DATE=$(date '+%T');
 

  PS1='\[\e[1;94m\]$CURRENT_DATE \u@'$HOST_PS1'\[\e[1;94m\]$(__git_ps1)\[\e[00m\] $(pwd)\n\[\e[1;0m\]$EXIT_CODE \$ ';
}


# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

alias ll='ls -ghal'

# Add an "alert" alias for long running commands.  Use like so:
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Alias definitions.

if [ -f ~/.bash_aliases ]; then
  source ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

PATH=$HOME/bin/n-dir/bin:$HOME/bin:$PATH
PATH=$HOME/.npm_modules/bin:$PATH
PATH=$HOME/.local/bin:$PATH

if [ -f ~/.fzf.bash ]; then
  source ~/.fzf.bash
elif [ -f /usr/share/fzf/key-bindings.bash ]; then
  source /usr/share/fzf/key-bindings.bash
  source /usr/share/fzf/completion.bash
fi

if [ -f /usr/share/autojump/autojump.sh ]; then
  source /usr/share/autojump/autojump.sh 
elif [ -f /usr/share/autojump/autojump.bash ]; then
  source /usr/share/autojump/autojump.bash 
fi


if [ -f /home/chapa/.tnsrc ]; then 
  source /home/chapa/.tnsrc 
fi

if [ ! -d  "$HOME/.vim/tmp" ]; then
  mkdir -vp $HOME/.vim/tmp
fi

if [ ! -d  "$HOME/bin/runtime" ]; then
  mkdir -vp $HOME/bin/runtime
fi

if [ ! -f "$HOME/bin/runtime/monitor1" ]; then
  touch "$HOME/bin/runtime/monitor1"
fi

if [ ! -f "$HOME/bin/runtime/monitor2" ]; then
  touch "$HOME/bin/runtime/monitor2"
fi

if [ ! -d "$HOME/.config/dunst" ]; then
  mkdir -vp "$HOME/.config/dunst"
fi

eval $(keychain --eval id_rsa --noask -q)

if [ -z "$SSH_AGENT_PID" ]; then
  eval `ssh-agent`;
fi

