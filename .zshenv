#export LANG=ja_JP.UTF-8
export LANG=en_US.utf-8
export LC_ALL=en_US.utf-8

alias brew="PATH=/opt/homebrew/bin:/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin brew"
export PATH=$HOME/bin:$PATH
export PATH="$(brew --prefix)/bin:$PATH"
export PATH="$(brew --prefix)/sbin:$PATH"
export PATH="$HOME/.anyenv/bin:$PATH"

# Docker
export DOCKER_HOST=unix:///${HOME}/.lima/docker/sock/docker.sock
export DOCKER_CONFIG=${DOCKER_CONFIG:-$HOME/.docker}

# anyenv
# anyenv init - > ~/.anyenv-rc.sh
[ -f ~/.anyenv-rc.sh ] && source ~/.anyenv-rc.sh


# ailas
alias vi="nvim"
alias vim="nvim"
alias rsync="$(brew --prefix)/bin/rsync"
alias rbs="exec $SHELL -l"
alias da='docker exec app'
alias sed='gsed'
alias rsp='rsync -a --info=progress2'

# Go
export GOPATH=$HOME/go
export PATH="$GOENV_ROOT/bin:$PATH"
export PATH="$GOROOT/bin:$PATH"
export PATH="$GOPATH/bin:$PATH"

# Git alias
alias ga='git add'
alias gc='git commit -m'
alias gp='git push'
alias ggil='git grep -n'
alias gg='(){ git grep -n $1 -- '\'':!*.log'\''}' 
alias gr="git status | grep modified | sed -e 's/modified://g' |  xargs git checkout"
alias gls="git ls-files"
alias gfp="git fetch --prune"
alias gck="git checkout"
alias gs="git status"
alias gb="git branch"
alias ggvi="_ggvi"
_ggvi(){
	local pattern="${1}"
	gg "${pattern}" | awk '{print $1}' | sed -e 's/:[0-9]*://g' | sort | uniq | xargs -o vi
}
alias gam="git status | grep modified | sed 's/modified://g' | xargs git add"
alias gtree="git log --graph --simplify-by-decoration --pretty=format:'%d' --all"


# kubectrl
alias kgs='kubectl get service'
alias kds='kubectl describe service'
alias kgc='kubectl get pod -o jsonpath="{.spec.containers[*].name}"'
alias kgp='kubectl get pods'
alias kdp='kubectl describe pod'
alias kex='_kex'
_kex(){
	local pod="${1}"
	kubectl exec -it "${pod}" -- bash
}
alias kexc='_kexc'
_kexc(){
	local pod="${1}"
	local contaier="${2}"

	kubectl exec -it "${pod}" --container "${contaier}" -- bash
}


# Docker
alias dfr='docker ps -q | xargs -I{} docker rm -f {}'
alias de='_de'
_de(){
	local image="${1}"
	docker exec -it "${image}" /bin/bash
}

alias dr='_dr'
_dr(){
	local image="${1}"
	docker run -itd "${image}"
}

# Docker Compose
alias dcu='docker-compose up -d'
alias dcp='docker-compose ps'
alias dcd='docker-compose down'

# ytdl
alias yda='_yda'
_yda(){
	local url="${1}"
	yt-dlp -f bestaudio -x --audio-format m4a "${url}"
}
alias ydv='_ydv'
_ydv(){
	local url="${1}"
	yt-dlp -f bestvideo+bestaudio --recode-video mp4 "${url}"
	
}

alias grep='grep --color=auto'
alias gt="go test -gcflags=-l"
