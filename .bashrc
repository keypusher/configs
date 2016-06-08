#!/bin/sh

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

export EDITOR=vim
export PATH_ROOT=$PATH
export P4EDITOR=vim
export P4CONFIG=.p4config
export P4MERGE=p4merge
export PDIFF_DIFFTOOL=meld
export GDIFF_DIFFTOOL=meld
export PATH=/usr/sbin:/sbin:/usr/bin:/bin:/usr/local/bin:~/bin:~/tools

source ~/.aliases

# Make ls and ll colour, and ll show a complete list with human readable file sizes.
alias ll='ls -lahi --color'
alias ls='ls --color'

cd $HOME


# History Config
shopt -s histappend
export HISTCONTROL=ignoreboth

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

#if [ "$COLORTERM" == "gnome-terminal" ]; then
    export TERM=xterm-256color
#fi

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

## Prompt Config
# Make the prompt in the for user@host:directory
#set a fancy prompt (non-color, unless we know we "want" color)

case "$TERM" in
    xterm-color) color_prompt=yes;;
esac

PS1="[\u@\h \w]# "
export PS1="\[$(tput bold)\][\u@\h: \w]#\[$(tput sgr0)\] "

parse_git_branch() {
   git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
    
# Add git branch to the prompt
export PS1="\[\033[00m\]\u@\h\[\033[01;34m\] \w \[\033[31m\]\$(parse_git_branch) \[\033[00m\]$\[\033[00m\] "

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
	test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
	alias ls='ls --color=auto'
	#alias dir='dir --color=auto'
	#alias vdir='vdir --color=auto'

	alias grep='grep --color=auto'
	alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi


# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
	    . /etc/bash_completion
		fi

