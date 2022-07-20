#export LANG=ja_JP.UTF-8
export LANG=en_US.utf-8
export LC_ALL=en_US.utf-8

alias brew="PATH=/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin brew"


export PATH=$HOME/bin:$PATH
export PATH="$HOME/.anyenv/bin:$PATH"

export PATH="/usr/local/opt/icu4c/bin:$PATH"
export PATH="/usr/local/opt/icu4c/sbin:$PATH"
export PATH="/usr/local/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/opt/gettext/bin:$PATH"

# anyenv
[ -f ~/.anyenv-rc.sh ] && source ~/.anyenv-rc.sh

# Go
export GOPATH=$HOME/go
export PATH="$GOENV_ROOT/bin:$PATH"
export PATH="$GOROOT/bin:$PATH"
export PATH="$GOPATH/bin:$PATH"


alias da='docker exec app'
alias sed='gsed'

export DOCKER_HOST=unix:///${HOME}/.lima/docker/sock/docker.sock
export DOCKER_CONFIG=${DOCKER_CONFIG:-$HOME/.docker}
