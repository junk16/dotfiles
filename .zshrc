#if [ $(id -u) -eq 0 ];
#then
#  PS1='\[\e[1;36m\][\d \t \u@\h \w]\$\[\e[m\] '
#else
#  export PS1='\[\e[32m\][\h: \w]\n\[\e[0m\]\$ '
#fi
autoload -Uz compinit && compinit
autoload -Uz vcs_info
precmd() { vcs_info }

#
# Format the vcs_info_msg_0_ variable
zstyle ':vcs_info:git:*' formats "%F{magenta}ᚶ%f %F{cyan}<<< %b %f"
setopt prompt_subst
PROMPT='%F{green}[%n:%~]%f ${vcs_info_msg_0_}
$ '

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

alias grep='grep --color=auto'
alias gt="go test -gcflags=-l"

#autoload -U compinit; compinit
export PATH="/usr/local/opt/openssl@3/bin:$PATH"

# gtags
export GTAGSLABEL=pygments

# ROC setting
## stg
alias roc-stgapp='roc login -cjpe2-zed2-stg -nlpd-keiba-app'
alias roc-stgbo='roc login -cjpe2-zed2-stg -nlpd-keiba-backoffice'
## prod
alias roc-prodapp='roc login -cjpe2-zed2-prod -nlpd-keiba-app'
alias roc-prodbo='roc login -cjpe2-zed2-prod -nlpd-keiba-backoffice'
[[ /usr/local/bin/kubectl ]] && source <(kubectl completion zsh)
