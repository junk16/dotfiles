if [ $(id -u) -eq 0 ];
then
  PS1='\[\e[1;36m\][\d \t \u@\h \w]\$\[\e[m\] '
else
  export PS1='\[\e[32m\][\h: \w]\n\[\e[0m\]\$ '
fi
