# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

export ZSH="/Users/kooixh/.oh-my-zsh"
export PATH=/opt/homebrew/bin:/opt/homebrew/sbin:$PATH
export GOPATH=~/go
export GOCACHE=$GOPATH/cache
export GOPRIVATE=github.com/aurumn-io
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator 
export PATH=$PATH:$ANDROID_HOME/platform-tools

ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(git kubectl npm gitignore docker)

source $ZSH/oh-my-zsh.sh

alias zshrc="vi ~/.zshrc"

function expand-alias() {
	zle _expand_alias
	zle self-insert
}
zle -N expand-alias
bindkey -M main ' ' expand-alias

# opam configuration
test -r /Users/kooixh/.opam/opam-init/init.zsh && . /Users/kooixh/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Enable this to use oh-my-posh
# eval "$(oh-my-posh init zsh --config ~/.config/oh-my-posh/zen.toml)"

