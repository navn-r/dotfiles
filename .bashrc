source ~/git-prompt.sh
export GIT_PS1_SHOWDIRTYSTATE=1
export GIT_PS1_SHOWUPSTREAM="verbose"

# Custom aliases
alias la="ls -a"
alias pls="sudo"
alias ..="cd .."
alias cl="clear"
alias mkdir="mkdir -v"

# Colors

ORANGE=$(tput setaf 166)
CYAN=$(tput setaf 37)
WHITE=$(tput setaf 15)
GRAY=$(tput setaf 242)
BOLD=$(tput bold)
RESET=$(tput sgr0)

check_usr() {
    [ "$USER" == 'home' ] && echo 🏠 || echo "$USER"
}

check_homedir() {
    [ "$PWD" == "$HOME" ] && echo 🌴 || ([ "$PWD" == "/" ] && echo 🦴) || echo "${PWD##*/}"
}

# Custom Prompt Script
PS1="\[$BOLD$GRAY\]\t\[$RESET $CYAN\]\$(check_usr)\[$GRAY\] at \[$CYAN\]\h: \[$ORANGE\]\$(check_homedir) "
PS1+='$(__git_ps1 "\[$GRAY\]git:\[$CYAN\]%s ")\n👉'
PS1+="\[$RESET\] "

export CLICOLOR=1

export PS1
export PS2="﹥"
export PS4="✚"

