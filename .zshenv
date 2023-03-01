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

alias rbs="exec $SHELL -l"
alias da='docker exec app'
alias sed='gsed'

# Git alias
alias ggil='git grep -n'
alias gg='(){ git grep -n $1 -- '\'':!*.log'\''}' 
alias gr="git status | grep modified | sed -e 's/modified://g' |  xargs git checkout"
alias gls="git ls-files"
alias gfp="git fetch --prune"
alias gc="git checkout"
alias gs="git status"
alias ggvi="_ggvi"
_ggvi(){
	local pattern="${1}"
	gg "${pattern}" | awk '{print $1}' | sed -e 's/:[0-9]*://g' | sort | uniq | xargs -o vi
}

export DOCKER_HOST=unix:///${HOME}/.lima/docker/sock/docker.sock
export DOCKER_CONFIG=${DOCKER_CONFIG:-$HOME/.docker}


# kubectrl
alias kgc='kubectl get pod -o jsonpath="{.spec.containers[*].name}"'
alias kecb='_kecb'
_kecb(){
	local pod="${1}"
	local contaier="${2}"

	kubectl exec -it "${pod}" --container "${contaier}" -- /bin/bash
}
