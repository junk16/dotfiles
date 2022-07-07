#if [ -f ~/.bashrc ] ;
#then
#  source ~/.bashrc
#fi

#export LANG=ja_JP.UTF-8
export LANG=en_US.utf-8
export LC_ALL=en_US.utf-8

alias brew="PATH=/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin brew"


export PATH=$HOME/bin:$PATH
export PATH="$HOME/.anyenv/bin:$PATH"

export PATH="/usr/local/opt/icu4c/bin:$PATH"
export PATH="/usr/local/opt/icu4c/sbin:$PATH"
export PATH="/usr/local/bin:$PATH"
export GOPATH=$HOME/go
export PATH=${GOPATH}:${PATH}
export PATH="/usr/local/sbin:$PATH"
export PATH="/Users/jun.yamada/local/bin:$PATH"
export PATH="/usr/local/opt/gettext/bin:$PATH"
export PATH="$HOME/test_bin:$PATH"

alias da='docker exec app'
alias sed='gsed'

export DOCKER_HOST=unix:///${HOME}/.lima/docker/sock/docker.sock
export DOCKER_CONFIG=${DOCKER_CONFIG:-$HOME/.docker}
