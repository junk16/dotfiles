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
[ -f ~/.zshrc_work ] && source ~/.zshrc_work
[ -f  "$HOME/.cargo/env" ] && source "$HOME/.cargo/env"
#
#autoload -U compinit; compinit
#export PATH="/usr/local/opt/openssl@3/bin:$PATH"

# gtags
export GTAGSLABEL=pygments

[[ /usr/local/bin/kubectl ]] && source <(kubectl completion zsh)

# Key-Binding
bindkey ƒ forward-word
bindkey ∫ backward-word

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$($HOME/anaconda3/bin/conda 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "$HOME/anaconda3/etc/profile.d/conda.sh" ]; then
        . "$HOME/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="$HOME/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

