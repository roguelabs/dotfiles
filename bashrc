#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# History behaviour
# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

export EDITOR=vim
export VISUAL=$EDITOR
#export TERM=xterm-256color

alias ls='ls --color=auto'
alias ll='ls -lh'
alias la='ls -lha'
alias ltr='ls -lhatr'
alias xclip='xclip -selection primary'
alias tmux='tmux -2'


# enable bash completion in interactive shells
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

# git stuff
if ! type __git_ps1 &> /dev/null && [ -e /usr/share/git/completion/git-prompt.sh ]; then
  source /usr/share/git/completion/git-prompt.sh
fi
export GIT_PS1_SHOWDIRTYSTATE=1
export GIT_PS1_SHOWCOLORHINTS=1

if [ "$TERM" = xterm-256color -o  "$TERM" = screen ]; then
    force_color_prompt=yes
fi

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

#export PS1="\033]0;\u@\h\007${debian_chroot:+($debian_chroot)}\[\033[32;49m\][\u@\h:\[\033[37;49m\]\w\[\033[00m\]\[\033[32;49m\]]\[\033[00m\]\n\$ "

if [ "$color_prompt" = yes ]; then
    PROMPT_COMMAND='__git_ps1 "\033]0;\u@\h\007${debian_chroot:+($debian_chroot)}$(if [ $VIRTUAL_ENV ]; then echo "($(basename ${VIRTUAL_ENV}))"; fi)\[\033[32;49m\][\u@\h:\[\033[37;49m\]\w\[\033[00m\]\[\033[32;49m\]]\[\033[00m\]" "\n\$ "'
else
    PROMPT_COMMAND='__git_ps1 "\033]0;\u@\h\007${debian_chroot:+($debian_chroot)}$(if [ $VIRTUAL_ENV ]; then echo "($(basename ${VIRTUAL_ENV}))"; fi)[\u@\h:\w]" "${PYTHON_VIRTUALENV} \n\$ "'
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
# case "$TERM" in
# xterm*|rxvt*)
#     PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
#     ;;
# *)
#     ;;
# esac

# go stuff
export GOPATH=$HOME/workspace/go
export PATH=~/bin:$PATH:$GOPATH/bin

# virtualenvwrapper
export WORKON_HOME=~/workspace/virtualenvs
source /usr/bin/virtualenvwrapper.sh
