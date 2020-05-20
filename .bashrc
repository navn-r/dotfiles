source ~/git-prompt.sh
export GIT_PS1_SHOWDIRTYSTATE=1
export GIT_PS1_SHOWUPSTREAM="verbose"

# Setting PATH for Python 3.7
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.7/bin:${PATH}"
export PATH

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Exporting Android SDK
ANDROID_SDK="/Users/home/Library/Android/sdk"
export ANDROID_SDK
export PATH=/Users/home/Library/Android/sdk/platform-tools:$PATH
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools

# nvm
export PATH="/Users/home/.nvm/versions/node/v13.8.0/bin:$PATH"

# LaTeX
export PATH=$PATH:/Users/home/Library/TeX/texbin

# Custom aliases
alias la="ls -A"
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

# Custom Prompt Script
PS1="\[$BOLD$GRAY\]\t\[$RESET $CYAN\]\[`if [ $USER = 'home' ]; then echo 🏠; else echo '\u'; fi`\]\[$GRAY\] at \[$CYAN\]\h: \[$ORANGE\]\W "
PS1+='$(__git_ps1 "\[$GRAY\]git:\[$CYAN\]%s ")'
PS1+="\n👉\[$RESET\] "

export PS1

