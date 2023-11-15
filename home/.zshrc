export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="powerlevel9k/powerlevel9k"
POWERLEVEL9K_PROMPT_ON_NEWLINE=true

plugins=(git npm archlinux bower docker web-search battery lein rust fzf)
export TERM="xterm-256color"
source $ZSH/oh-my-zsh.sh

# mkdir "${HOME}/.npm-packages"
export DOTNET_PATH="${HOME}/.dotnet"
export DOTNET_TOOLS_PATH="${DOTNET_PATH}/tools"
export NPM_PACKAGES="${HOME}/.npm-packages"
export PATH="$HOME/bin:/usr/local/bin:$PATH:$DOTNET_PATH:$DOTNET_TOOLS_PATH:$NPM_PACKAGES/bin"
export EDITOR="subl3"
alias grep="/usr/bin/grep $GREP_OPTIONS"
unset GREP_OPTIONS

LD_LIBRARY_PATH=/usr/local/lib
export LD_LIBRARY_PATH
#alias python='python2'
alias fm='ranger'
export NODE_ENV=development

#export LIBVA_DRIVER_NAME=i965 #Intel GMA 4500 series and newer GPUs are supported by libva-intel-driver with mesa. // https://wiki.archlinux.org/index.php/Hardware_video_acceleration

archey3 --config=~/dotfiles/home/.config/archey3.config -c magenta
export LIBVA_DRIVER_NAME='i965'
export VDPAU_DRIVER='va_gl'
alias ls='exa'
export WINEARCH=win32
alias exo-open-term='exo-open --launch TerminalEmulator'
alias gus='find . -mindepth 1 -maxdepth 1 -type d -print -exec git -C {} pull \;'
alias gbd='for dir in ./*; do (echo "$dir"; git -C "$dir" branch; echo "----------------"); done'
export VISUAL="subl3"
alias npmi='npm install packageName --cache "/tmp/cache.$RANDOM"'
