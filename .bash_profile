[[ -f ~/.bashrc ]] . ~/.bashrc

# Profile file. Runs on login.

# Adds `~/.scripts` and all subdirectories to $PATH


#export PATH="$(du "$HOME/.scripts/" | cut -f2 | tr '\n' ':')$PATH"
#export PATH="/home/tramhao/.gem/ruby/2.5.0/bin:$PATH"
#export PATH="$HOME/.config/bspwm:$PATH"

#export EDITOR="nvim"
#export TERMINAL="alacritty"
#export BROWSER="brave"
##export BROWSER="chromium"
#export READER="zathura"
#export BIB="$HOME/Documents/LaTeX/uni.bib"
#export REFER="$HOME/.referbib"
## PIX is here I have LARBS keep icons. Subject to change, hence a variable.
#export PIX="$HOME/.scripts/pix"
#export SUDO_ASKPASS="$HOME/.scripts/tools/dmenupass"

#export TERM="xterm"

## less/man colors
##export LESS=-R
##export LESS_TERMCAP_mb=$'\E[1;31m'     # begin bold
##export LESS_TERMCAP_md=$'\E[1;36m'     # begin blink
##export LESS_TERMCAP_me=$'\E[0m'        # reset bold/blink
##export LESS_TERMCAP_so=$'\E[01;44;33m' # begin reverse video
##export LESS_TERMCAP_se=$'\E[0m'        # reset reverse video
##export LESS_TERMCAP_us=$'\E[1;32m'     # begin underline
##export LESS_TERMCAP_ue=$'\E[0m'        # reset underline

#[ ! -f ~/.shortcuts ] && shortcuts >/dev/null 2>&1

#[ -f ~/.bashrc ] && source "$HOME/.bashrc"

## Start graphical server if i3 not already running.
#[ "$(tty)" = "/dev/tty1" ] && ! pgrep -x i3 >/dev/null && exec startx

## Switch escape and caps and use wal colors if tty:
#sudo -n loadkeys ~/.scripts/ttymaps.kmap 2>/dev/null

##export GTK_IM_MODULE=ibus
##export QT_IM_MODULE=ibus
##export XMODIFIERS="@im=ibus"

#export INPUT_METHOD DEFAULT=fcitx5
#export GTK_IM_MODULE=fcitx5
#export QT_IM_MODULE=fcitx5
#export XMODIFIERS="@im=fcitx5"

##ibus-daemon -drx

#export $(dbus-launch)
#export DOWNGRADE_FROM_ALA=1

