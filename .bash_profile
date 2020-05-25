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

# Send to .bashrc
if [ -f ~/.bashrc ]; then
    source ~/.bashrc
fi