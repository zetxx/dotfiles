export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="powerlevel9k/powerlevel9k"
POWERLEVEL9K_PROMPT_ON_NEWLINE=true

plugins=(git npm archlinux docker web-search battery fzf kubectl docker-compose)
export TERM="xterm-256color"
source $ZSH/oh-my-zsh.sh

export EDITOR="subl"
alias grep="/usr/bin/grep $GREP_OPTIONS"
unset GREP_OPTIONS

LD_LIBRARY_PATH=/usr/local/lib
export LD_LIBRARY_PATH
alias fm='ranger'
export NODE_ENV=development

archey3 --config=~/.dotfiles/home/.config/archey3.config -c magenta
alias exo-open-term='exo-open --launch TerminalEmulator'
alias gus='find . -mindepth 1 -maxdepth 1 -type d -print -exec git -C {} pull \;'
alias gbd='for dir in ./*; do (echo "$dir"; git -C "$dir" branch; echo "----------------"); done'
export VISUAL="subl"
export ANDROID_HOME='/home/zetxx/Android/Sdk'
export ANDROID_USER_HOME='/home/zetxx/.android'
export KUBE_EDITOR='vim'
export NODE_OPTIONS="--max-old-space-size=12192"
export NPM_PACKAGES="/Store/zetxx/Projects/.npm-packages"
export NODE_PATH="$NPM_PACKAGES/lib/node_modules"

export PATH="/usr/local/bin:$PATH:$NPM_PACKAGES/bin:$HOME/.local/bin/:/opt/android-sdk/emulator/"
