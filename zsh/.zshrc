
# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

plugins=(git zsh-autosuggestions zsh-syntax-highlighting web-search docker nvm)

export ZSH_COMPDUMP=$ZSH/cache/.zcompdump-$HOST
source $ZSH/oh-my-zsh.sh

# Example aliases
alias zshconfig="nvim ~/.zshrc"
alias nvimconfig="nvim  ~/.config/nvim"

#Exa alias
eza_params=('--icons' '-l' '--no-permissions' '--no-user' '--header' '--long' '--sort=modified')
alias ls='eza --icons  -l --no-permissions --no-user --header --long --sort=modified'
alias tree='eza --tree $eza_params'

# Misc aliases
alias d="cd ~/Dev"
alias p="cd ~/Dev/Projects"
alias a="cd ~/Dev/Archive"
alias b="cd ~/Dev/Bounties"

alias bat='bat --paging=never'
alias starconfig="nvim ~/.config/starship.toml"

alias lg="lazygit"

alias n="nvim"

# Starship
eval "$(starship init zsh)"

# pnpm
export PNPM_HOME="$HOME/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac

# bun completions
[ -s "$HOME/.bun/_bun" ] && source "$HOME/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# fnm
export PATH="$HOME/Library/Application Support/fnm:$PATH"
eval "`fnm env`"
export PATH="/opt/homebrew/opt/jpeg/bin:$PATH"

# java stuff
export JAVA_HOME=$(/usr/libexec/java_home)
export PATH=$JAVA_HOME/bin:$PATH

# golang
export PATH=$PATH:$(go env GOPATH)/bin # this enables go binaries to be run from anywhere

