
# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

plugins=(git zsh-autosuggestions zsh-syntax-highlighting web-search docker nvm)

export ZSH_COMPDUMP=$ZSH/cache/.zcompdump-$HOST
source $ZSH/oh-my-zsh.sh

# Example aliases
alias zshconfig="code ~/.zshrc"
alias tmuxconfig="code ~/.tmux.conf"

#Exa alias
eza_params=('--git' '--icons' '--classify' '--group-directories-first' '--time-style=long-iso' '--group' '--color-scale')
alias ls='eza $exa_params'
alias l='eza --git-ignore $eza_params'
alias ll='eza --all --header --long $eza_params'
alias llm='eza --all --header --long --sort=modified $eza_params'
alias la='eza -lbhHigUmuSa'
alias lx='eza -lbhHigUmuSa@'
alias lt='eza --tree $eza_params'
alias tree='eza --tree $eza_params'

# Misc aliases
alias d="cd ~/Dev"
alias p="cd ~/Dev/Projects"
alias a="cd ~/Dev/Archive"
alias b="cd ~/Dev/Bounties"

alias bat='bat --paging=never'
alias starconfig="code ~/.config/starship.toml"
alias air='$(go env GOPATH)/bin/air'

alias lz="lazygit"

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

