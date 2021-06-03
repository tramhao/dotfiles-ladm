# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.config/zsh/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Luke's config for the Zoomer Shell


# Enable colors and change prompt:
# autoload -U colors && colors	# Load colors
# PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "



setopt autocd		# Automatically cd into typed directory.
# stty stop undef		# Disable ctrl-s to freeze terminal.
setopt interactive_comments

# History in cache directory:
HISTSIZE=10000000
SAVEHIST=10000000
HISTFILE=~/.cache/zsh/history
setopt HIST_FIND_NO_DUPS
setopt INC_APPEND_HISTORY
bindkey '^R' history-incremental-search-backward

# Load aliases and shortcuts if existent.
[ -f "${XDG_CONFIG_HOME:-$HOME/.config}/shell/shortcutrc" ] && source "${XDG_CONFIG_HOME:-$HOME/.config}/shell/shortcutrc"
[ -f "${XDG_CONFIG_HOME:-$HOME/.config}/shell/aliasrc" ] && source "${XDG_CONFIG_HOME:-$HOME/.config}/shell/aliasrc"
[ -f "${XDG_CONFIG_HOME:-$HOME/.config}/shell/zshnameddirrc" ] && source "${XDG_CONFIG_HOME:-$HOME/.config}/shell/zshnameddirrc"

# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.


# setopt prompt_subst
# autoload -Uz vcs_info
# zstyle ':vcs_info:*' actionformats \
#     '%F{5}(%f%s%F{5})%F{3}-%F{5}[%F{2}%b%F{3}|%F{1}%a%F{5}]%f '
# zstyle ':vcs_info:*' formats       \
#     '%F{5}(%F{2}%b%F{5})%F{3}-%F{5}[%F{2}%r%F{5}]%f '
# zstyle ':vcs_info:(sv[nk]|bzr):*' branchformat '%b%F{1}:%F{3}%r'

# zstyle ':vcs_info:*' enable git

# # or use pre_cmd, see man zshcontrib
# vcs_info_wrapper() {
#   vcs_info
#   if [ -n "$vcs_info_msg_0_" ]; then
#     echo "%{$fg[grey]%}${vcs_info_msg_0_}%{$reset_color%}$del"
#   fi
# }

# source "${XDG_CONFIG_HOME:-$HOME/.config}/zsh/two-line-prompt.zsh"
# VI_MODE_KEEP_CURSOR=1
# # VI_NORMAL_MODE_INDICATOR=' %F{blue}-- NORMAL --%f'
# # VI_INSERT_MODE_INDICATOR=' %F{green}-- INSERT --%f'

# [[ $(hostname) == "XMLaptop" ]] && unset VI_MODE_KEEP_CURSOR
# if [ "$TERM" != "linux" ]; then 
#   unset VI_MODE_KEEP_CURSOR
# fi
# source "${XDG_CONFIG_HOME:-$HOME/.config}/zsh/vi-mode.zsh"

# RPROMPT='$(vi_mode_status)'

source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme

# Use lf to switch directories and bind it to ctrl-o
lfcd () {
    tmp="$(mktemp)"
    lf -last-dir-path="$tmp" "$@"
    if [ -f "$tmp" ]; then
        dir="$(cat "$tmp")"
        rm -f "$tmp" >/dev/null
        [ -d "$dir" ] && [ "$dir" != "$(pwd)" ] && cd "$dir"
    fi
}
bindkey -s '^o' 'lfcd\n'

bindkey -s '^a' 'bc -lq\n'

bindkey -s '^f' 'cd "$(dirname "$(fzf)")"\n'

bindkey '^[[P' delete-char

# Edit line in vim with ctrl-e:
autoload edit-command-line; zle -N edit-command-line
bindkey '^e' edit-command-line

source /usr/share/doc/pkgfile/command-not-found.zsh

# Load syntax highlighting; should be last.
# source /usr/share/zsh/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh 2>/dev/null

#install by yay -S zsh-syntax-highlighting
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

export MESA_LOADER_DRIVER_OVERRIDE=i965 

pfetch

# To customize prompt, run `p10k configure` or edit ~/.config/zsh/.p10k.zsh.
[[ ! -f ~/.config/zsh/.p10k.zsh ]] || source ~/.config/zsh/.p10k.zsh
