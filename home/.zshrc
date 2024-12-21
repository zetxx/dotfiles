export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="agnoster"
plugins=(git npm archlinux docker web-search battery fzf docker-compose z)
source $ZSH/oh-my-zsh.sh

export TERM=xterm-256color
export KUBE_EDITOR=nvim

export EDITOR="mousepad"
alias gus='find . -mindepth 1 -maxdepth 1 -type d -print -exec git -C {} pull \;'
alias gbd='for dir in ./*; do (echo "$dir"; git -C "$dir" branch; echo "----------------"); done'
export VISUAL="nvim"
alias npmi='npm i --cache "/tmp/cache.$RANDOM"'
#export CONTAINERD_ROOTLES_SOCK="$(cat /run/user/1000/containerd-rootless/child_pid)"
export NODE_ENV=development
export NODE_PATH=$(npm root --quiet -g)
export GOPATH=/home/zetxx/go
export GOBIN=${GOPATH}/bin
export PATH=${PATH}:${NODE_PATH}:$(go env GOBIN)
export BUILDKIT_PROGRESS=plain
alias exo-open-term='exo-open --launch TerminalEmulator'
source $HOME/.tokens.sh
alias pip="~/python/venv/bin/pip"
alias vim="nvim"
archey4
