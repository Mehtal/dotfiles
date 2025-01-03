# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=9000
SAVEHIST=9000
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/perona/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
#
#


#____________________ ALIASSES START ________________________

alias chad='NVIM_APPNAME="nvchad" nvim'
alias e="$HOME/Android/emulator/emulator"

#____________________ ALIASSES END________________________
function yy() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")"
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		builtin cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}

#____________________plugins and themes_________________________
#
#
#
source ~/github/shellmark/shellmark.sh
source ~/.config/zsh/powerlevel10k/powerlevel10k.zsh-theme
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
fpath+=${ZDOTDIR:-~}/.zsh_functions
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.config/zsh/plugins/zsh-autosuggestions.zsh
source ~/.config/zsh/plugins/zsh-history-substring-search.zsh
source ~/.config/zsh/plugins/you-should-use.zsh
# zsh-history-substring-search configuration
bindkey '^k' history-substring-search-up 
bindkey '^j' history-substring-search-down 
HISTORY_SUBSTRING_SEARCH_ENSURE_UNIQUE=1
#
#
#
#____________________plugins and themes_________________________

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export ANDROID_HOME=$HOME/Android
export PATH=$ANDROID_HOME/cmdline-tools/latest/bin:$PATH
export PATH=$ANDROID_HOME/platform-tools:$PATH
export PATH="$PATH:/home/perona/.local/bin:/opt/flutter/bin/"
export MANPAGER="nvim +Man!"
# Enable comments
setopt interactive_comments
