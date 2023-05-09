# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# zsh theme
ZSH_THEME="agnoster"
# ZSH_THEME="robbyrussell"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Command auto-correction
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(
    git
    zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# export to PATH
export PATH=$PATH:/usr/local/go/bin

# Aliases
alias v="nvim"
alias tmux="env TERM=xterm-256color tmux"
alias zshconfig="v ~/.zshrc"
alias nvimconfig="v ~/.config/nvim"
alias nocaps="/usr/bin/setxkbmap -option 'ctrl:nocaps'"

# vpn
alias vpn-up='sudo openconnect --background --user=csalas@suse.com https://eu.vpn.suse.net'
alias vpn-down='sudo kill -2 `pgrep openconnect`'

# k8s
alias k='kubectl'
alias kgpo='kubectl get po'
export KUBECONFIG=~/.kube/config

# zsh-autosuggestions
bindkey '^y' autosuggest-accept
