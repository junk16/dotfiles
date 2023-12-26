autoload -Uz compinit && compinit
autoload -Uz vcs_info
precmd() { vcs_info }

# Key-Binding
bindkey ƒ forward-word
bindkey ∫ backward-word

# Format the vcs_info_msg_0_ variable
zstyle ':vcs_info:git:*' formats "%F{magenta}ᚶ%f %F{cyan}<<< %b %f"
setopt prompt_subst
PROMPT='%F{green}[%n:%~]%f ${vcs_info_msg_0_}
$ '

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
[ -f  "$HOME/.cargo/env" ] && source "$HOME/.cargo/env"
[[ /usr/local/bin/kubectl ]] && source <(kubectl completion zsh)
[ -f ~/zsh4work/.zshrc_work ] && source ~/zsh4work/.zshrc_work

# anyenv
# anyenv init - > ~/.anyenv-rc.sh
[ -f ~/.anyenv-rc.sh ] && source ~/.anyenv-rc.sh;


# gtags
export GTAGSLABEL=pygments

# ailas
alias vi="nvim"
alias vim="nvim"

alias rsync="$(brew --prefix)/bin/rsync"
alias grep="$(brew --prefix)/bin/ggrep"
alias zcat="gzcat"
alias zgrep="grep"
alias rbs="exec $SHELL -l"
alias da='docker exec app'
alias sed='gsed'
alias rsp='rsync -a --info=progress2'

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
alias kgd='kubectl get deployment'
alias kgc='kubectl get pod -o jsonpath="{.spec.containers[*].name}"'
alias kgp='kubectl get pods'
alias kdp='kubectl describe pod'
alias kex='_kex'
_kex(){
	local pod="${1}"
    local cmd="${2}"

    if [[ -n "$cmd" ]]; then
        :
    else
        cmd='bash'
    fi

	kubectl exec -it "${pod}" -- "$cmd"
}
alias kexc='_kexc'
_kexc(){
	local pod="${1}"
	local contaier="${2}"

	kubectl exec -it "${pod}" --container "${contaier}" -- bash
}

alias kds='_kds'
_kds(){
    local service="$1"
    kubectrl describe service "$service"
}
alias kdd='_kdd'
_kdd(){
    local deployment="$1"
    kubectl describe deployment "$deployment"
}

alias kdlp='_kdlp()'
_kdlp(){
    local pod="$1"
    kubectrl delete pod --grace-period=0 --force "$pod"
}

alias kdld='_kdld'
_kdld(){
    local deployment="$1"
    kubectl delete deployment "$deployment"
}

_kdls(){
    local service="$1"
    kubectl delete service "$service"
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
	yt-dlp  --no-check-certificate -f bestaudio -x --audio-format m4a "${url}"
}
alias ydv='_ydv'
_ydv(){
	local url="${1}"
	yt-dlp  --no-check-certificate -f bestvideo+bestaudio --recode-video mp4 "${url}"
	
}

alias grep='grep --color=auto'
alias gt="go test -gcflags=-l"
alias ctgas="$(brew --prefix)/bin/ctags"

dmysql ()
{
    version_str="$1";
    [[ -z $version_str ]] && version_str="latest";
    version_int=$(echo $version_str | awk -F"[.-]" '{printf("%d%02d%02d\n", $1, $2, $3)}');
    if [[ $version_str = "latest" || $version_int -ge 80022 ]]; then
        repo="container-registry.oracle.com/mysql/community-server";
    else
        repo="mysql/mysql-server";
    fi;
    docker run -d -P -e MYSQL_ALLOW_EMPTY_PASSWORD=1 -e MYSQL_ROOT_PASSWORD="""" -e MYSQL_ROOT_HOST=""%"" $repo:$version_str
}
export PATH="/opt/homebrew/opt/php@7.3/bin:$PATH"
export PATH="/opt/homebrew/opt/php@7.3/sbin:$PATH"
