#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export EDITOR=vim
export VISUAL=$EDITOR
export TERM=xterm-256color

alias ls='ls --color=auto'
alias ll='ls -lh'
alias la='ls -lha'
alias ltr='ls -lhatr'
alias xclip='xclip -selection primary'
PS1='[\u@\h \W]\$ '

#alias venv='source /home/roger/python/django-venv/bin/activate && cd /home/roger/python/projects/Cloudpreserve'
alias tmux='tmux -2'


export GOPATH=$HOME/workspace/go
export PATH=~/bin:$PATH:$GOPATH/bin



# git stuff
source /usr/share/bash-completion/bash_completion
source /usr/share/git-core/contrib/completion/git-prompt.sh
export GIT_PS1_SHOWDIRTYSTATE=1
export GIT_PS1_SHOWCOLORHINTS=1
PROMPT_COMMAND='__git_ps1 "[\u@\h:\w]" "\n\\\$ "'

