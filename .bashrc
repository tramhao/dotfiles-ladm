#
# ~/.bashrc
#

[[ $- != *i* ]] && return

colors() {
	local fgc bgc vals seq0

	printf "Color escapes are %s\n" '\e[${value};...;${value}m'
	printf "Values 30..37 are \e[33mforeground colors\e[m\n"
	printf "Values 40..47 are \e[43mbackground colors\e[m\n"
	printf "Value  1 gives a  \e[1mbold-faced look\e[m\n\n"

	# foreground colors
	for fgc in {30..37}; do
		# background colors
		for bgc in {40..47}; do
			fgc=${fgc#37} # white
			bgc=${bgc#40} # black

			vals="${fgc:+$fgc;}${bgc}"
			vals=${vals%%;}

			seq0="${vals:+\e[${vals}m}"
			printf "  %-9s" "${seq0:-(default)}"
			printf " ${seq0}TEXT\e[m"
			printf " \e[${vals:+${vals+$vals;}}1mBOLD\e[m"
		done
		echo; echo
	done
}

[ -r /usr/share/bash-completion/bash_completion ] && . /usr/share/bash-completion/bash_completion

# Change the window title of X terminals
case ${TERM} in
	xterm*|rxvt*|Eterm*|aterm|kterm|gnome*|interix|konsole*)
		PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME%%.*}:${PWD/#$HOME/\~}\007"'
		;;
	screen*)
		PROMPT_COMMAND='echo -ne "\033_${USER}@${HOSTNAME%%.*}:${PWD/#$HOME/\~}\033\\"'
		;;
esac

use_color=true

# Set colorful PS1 only on colorful terminals.
# dircolors --print-database uses its own built-in database
# instead of using /etc/DIR_COLORS.  Try to use the external file
# first to take advantage of user additions.  Use internal bash
# globbing instead of external grep binary.
safe_term=${TERM//[^[:alnum:]]/?}   # sanitize TERM
match_lhs=""
[[ -f ~/.dir_colors   ]] && match_lhs="${match_lhs}$(<~/.dir_colors)"
[[ -f /etc/DIR_COLORS ]] && match_lhs="${match_lhs}$(</etc/DIR_COLORS)"
[[ -z ${match_lhs}    ]] \
	&& type -P dircolors >/dev/null \
	&& match_lhs=$(dircolors --print-database)
[[ $'\n'${match_lhs} == *$'\n'"TERM "${safe_term}* ]] && use_color=true

if ${use_color} ; then
	# Enable colors for ls, etc.  Prefer ~/.dir_colors #64489
	if type -P dircolors >/dev/null ; then
		if [[ -f ~/.dir_colors ]] ; then
			eval $(dircolors -b ~/.dir_colors)
		elif [[ -f /etc/DIR_COLORS ]] ; then
			eval $(dircolors -b /etc/DIR_COLORS)
		fi
	fi

	if [[ ${EUID} == 0 ]] ; then
		PS1='\[\033[01;31m\][\h\[\033[01;36m\] \W\[\033[01;31m\]]\$\[\033[00m\] '
	else
		PS1='\[\033[01;32m\][\u@\h\[\033[01;37m\] \W\[\033[01;32m\]]\$\[\033[00m\] '
	fi

	alias ls='ls --color=auto'
	alias grep='grep --colour=auto'
	alias egrep='egrep --colour=auto'
	alias fgrep='fgrep --colour=auto'
else
	if [[ ${EUID} == 0 ]] ; then
		# show root@ when we don't have colors
		PS1='\u@\h \W \$ '
	else
		PS1='\u@\h \w \$ '
	fi
fi

unset use_color safe_term match_lhs sh

alias cp="cp -i"                          # confirm before overwriting something
alias df='df -h'                          # human-readable sizes
alias free='free -m'                      # show sizes in MB
alias np='nano -w PKGBUILD'
alias more=less

xhost +local:root > /dev/null 2>&1

complete -cf sudo

# Bash won't get SIGWINCH if another process is in the foreground.
# Enable checkwinsize so that bash will check the terminal size when
# it regains control.  #65623
# http://cnswww.cns.cwru.edu/~chet/bash/FAQ (E11)
shopt -s checkwinsize

shopt -s expand_aliases

# export QT_SELECT=4

# Enable history appending instead of overwriting.  #139609
shopt -s histappend

#
# # ex - archive extractor
# # usage: ex <file>
ex ()
{
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)   tar xjf $1   ;;
      *.tar.gz)    tar xzf $1   ;;
      *.bz2)       bunzip2 $1   ;;
      *.rar)       unrar x $1     ;;
      *.gz)        gunzip $1    ;;
      *.tar)       tar xf $1    ;;
      *.tbz2)      tar xjf $1   ;;
      *.tgz)       tar xzf $1   ;;
      *.zip)       unzip $1     ;;
      *.Z)         uncompress $1;;
      *.7z)        7z x $1      ;;
      *)           echo "'$1' cannot be extracted via ex()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}



##!/bin/bash
##  _               _
## | |__   __ _ ___| |__  _ __ ___
## | '_ \ / _` / __| '_ \| '__/ __|
## | |_) | (_| \__ \ | | | | | (__
## |_.__/ \__,_|___/_| |_|_|  \___|

#stty -ixon # Disable ctrl-s and ctrl-q.
#shopt -s autocd #Allows you to cd into directory merely by typing the directory name.
#HISTSIZE= HISTFILESIZE= # Infinite history.

##export PS1="\[$(tput bold)\]\[$(tput setaf 1)\][\[$(tput setaf 3)\]\u\[$(tput setaf 2)\]@\[$(tput setaf 4)\]\h \[$(tput setaf 5)\]\W\[$(tput setaf 1)\]]\[$(tput setaf 7)\]\\$ \[$(tput sgr0)\]"

#[ -f "$HOME/.shortcuts" ] && source "$HOME/.shortcuts" # Load shortcut aliases

##export GPG_TTY=$(tty)

#export DOWNGRADE_FROM_ALA=1


## System Maintainence
#alias mw="~/.config/mutt/mutt-wizard.sh"
#alias muttwizard="~/.config/mutt/mutt-wizard.sh"
#alias sdn="sudo shutdown now"
#alias psref="gpg-connect-agent RELOADAGENT /bye" # Refresh gpg

## Some aliases
alias e="$EDITOR"
#alias sv="systemctl"
alias n="nvim"
#[ -x "$(command -v nvim)" ] && alias vim="nvim" vimdiff="nvim -d"
#alias r="ranger"
#alias ka="killall"
#alias g="git"
#alias trem="transmission-remote"
#alias mkd="mkdir -pv"
#alias ref="shortcuts && source ~/.bashrc" # Refresh shortcuts manually and reload bashrc
#alias bw="wal -i ~/.config/wall.png" # Rerun pywal
#alias duh="du -cBM --max-depth=1 2> /dev/null | sort -nr"
#alias sudo="sudo "
##alias j="autojump"

## Adding color
#alias ls='ls -hN --color=auto --group-directories-first'
##alias ls='lsd'
#alias grep="grep --color=auto"
#alias diff="diff --color=auto"
#alias ccat="highlight --out-format=ansi" # Color cat - print file with syntax highlighting.

## Internet
#alias yt="youtube-dl --add-metadata -ic" # Download video link
#alias yta="yt -x -f bestaudio/best" # Download only audio
#alias YT="youtube-viewer"

#shdl() { curl -O $(curl -s http://sci-hub.tw/"$@" | grep location.href | grep -o http.*pdf) ;}
#vf() { $EDITOR $(fzf) ;}

## Get color support for 'less'
#export LESS="--RAW-CONTROL-CHARS"

## Use colors for less, man, etc.
##[[ -f ~/.LESS_TERMCAP ]] && . ~/.LESS_TERMCAP
#export LESS_TERMCAP_mb=$(tput bold; tput setaf 2) # green
#export LESS_TERMCAP_md=$(tput bold; tput setaf 6) # cyan
#export LESS_TERMCAP_me=$(tput sgr0)
#export LESS_TERMCAP_so=$(tput bold; tput setaf 3; tput setab 4) # yellow on blue
#export LESS_TERMCAP_se=$(tput rmso; tput sgr0)
#export LESS_TERMCAP_us=$(tput smul; tput bold; tput setaf 7) # white
#export LESS_TERMCAP_ue=$(tput rmul; tput sgr0)
#export LESS_TERMCAP_mr=$(tput rev)
#export LESS_TERMCAP_mh=$(tput dim)
#export LESS_TERMCAP_ZN=$(tput ssubm)
#export LESS_TERMCAP_ZV=$(tput rsubm)
#export LESS_TERMCAP_ZO=$(tput ssupm)
#export LESS_TERMCAP_ZW=$(tput rsupm)
#export GROFF_NO_SGR=1         # For Konsole and Gnome-terminal
#export LC_ALL=en_US.UTF-8

##function _update_ps1() {
##	    PS1=$(powerline-shell $?)
##    }

##if [[ $TERM != linux && ! $PROMPT_COMMAND =~ _update_ps1 ]]; then
##	    PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
##:Ifi

##powerline-daemon -q
##POWERLINE_BASH_CONTINUATION=1
##POWERLINE_BASH_SELECT=1
##. /usr/share/powerline/bindings/bash/powerline.sh


##autojump
#. /usr/share/autojump/autojump.bash

##neofetch
#PF_INFO="ascii title os host kernel uptime pkgs memory"

export PATH=/home/$USER/.config/nvcode/utils/bin:$PATH
