#if [ $(id -u) -eq 0 ];
#then
#  PS1='\[\e[1;36m\][\d \t \u@\h \w]\$\[\e[m\] '
#else
#  export PS1='\[\e[32m\][\h: \w]\n\[\e[0m\]\$ '
#fi

PROMPT='%F{green}[%n:%~]%f
$ '

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# anyenv init - --no-rehash > ~/.anyenv-rc.sh
[ -f ~/.anyenv-rc.sh ] && source ~/.anyenv-rc.sh

alias grep='grep --color=auto'
alias gt="go test -gcflags=-l"
#autoload -U compinit; compinit
