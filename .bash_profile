if [ -f ~/.bashrc ] ;
then
  source ~/.bashrc
fi

export PATH="$HOME/.anyenv/bin:$PATH"
eval "$(anyenv init -)"
