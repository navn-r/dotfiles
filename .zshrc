# oh-my-zsh export MACOS
# export ZSH="/Users/home/.oh-my-zsh"

# oh-my-zsh export LINUX
export ZSH="/home/navinn/.oh-my-zsh"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"


# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(
    git
    vscode
    zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

# Custom Aliases
alias la="ls -a"
alias rmf="rm -f"
alias pls="sudo"
alias ..="cd .."
alias cl="clear"
alias mkdir="mkdir -v"

# Starship prompt
eval "$(starship init zsh)"