source "/usr/local/Cellar/anyenv/1.1.2/libexec/../completions/anyenv.zsh"
anyenv() {
  typeset command
  command="$1"
  if [ "$#" -gt 0 ]; then
    shift
  fi
  command anyenv "$command" "$@"
}
export GOENV_ROOT="/Users/jun.yamada/.anyenv/envs/goenv"
export PATH="/Users/jun.yamada/.anyenv/envs/goenv/bin:$PATH"
export GOENV_SHELL=zsh
export GOENV_ROOT=/Users/jun.yamada/.anyenv/envs/goenv
if [ "${PATH#*$GOENV_ROOT/shims}" = "${PATH}" ]; then
  export PATH="$GOENV_ROOT/shims:$PATH"
fi
source '/Users/jun.yamada/.anyenv/envs/goenv/libexec/../completions/goenv.zsh'
goenv() {
  local command
  command="$1"
  if [ "$#" -gt 0 ]; then
    shift
  fi

  case "$command" in
  rehash|shell)
    eval "$(goenv "sh-$command" "$@")";;
  *)
    command goenv "$command" "$@";;
  esac
}
goenv rehash --only-manage-paths
export JENV_ROOT="/Users/jun.yamada/.anyenv/envs/jenv"
export PATH="/Users/jun.yamada/.anyenv/envs/jenv/bin:$PATH"
export PATH="/Users/jun.yamada/.anyenv/envs/jenv/shims:${PATH}"
export JENV_SHELL=zsh
export JENV_LOADED=1
unset JAVA_HOME
source '/Users/jun.yamada/.anyenv/envs/jenv/libexec/../completions/jenv.zsh'
jenv refresh-plugins
jenv() {
  typeset command
  command="$1"
  if [ "$#" -gt 0 ]; then
    shift
  fi

  case "$command" in
  enable-plugin|rehash|shell|shell-options)
    eval `jenv "sh-$command" "$@"`;;
  *)
    command jenv "$command" "$@";;
  esac
}
export NODENV_ROOT="/Users/jun.yamada/.anyenv/envs/nodenv"
export PATH="/Users/jun.yamada/.anyenv/envs/nodenv/bin:$PATH"
export PATH="/Users/jun.yamada/.anyenv/envs/nodenv/shims:${PATH}"
export NODENV_SHELL=zsh
source '/Users/jun.yamada/.anyenv/envs/nodenv/libexec/../completions/nodenv.zsh'
nodenv() {
  local command
  command="${1:-}"
  if [ "$#" -gt 0 ]; then
    shift
  fi

  case "$command" in
  rehash|shell)
    eval "$(nodenv "sh-$command" "$@")";;
  *)
    command nodenv "$command" "$@";;
  esac
}
export PLENV_ROOT="/Users/jun.yamada/.anyenv/envs/plenv"
export PATH="/Users/jun.yamada/.anyenv/envs/plenv/bin:$PATH"
export PATH="/Users/jun.yamada/.anyenv/envs/plenv/shims:${PATH}"
export PLENV_SHELL=zsh
source '/Users/jun.yamada/.anyenv/envs/plenv/libexec/../completions/plenv.zsh'

plenv() {
  local command

  command="$1"
  if [ "$#" -gt 0 ]; then
    shift
  fi

  case "$command" in
  rehash|shell)
    eval "`plenv "sh-$command" "$@"`";;
  *)
    command plenv "$command" "$@";;
  esac
}
export PYENV_ROOT="/Users/jun.yamada/.anyenv/envs/pyenv"
export PATH="/Users/jun.yamada/.anyenv/envs/pyenv/bin:$PATH"
export PATH="/Users/jun.yamada/.anyenv/envs/pyenv/shims:${PATH}"
export PYENV_SHELL=zsh
source '/Users/jun.yamada/.anyenv/envs/pyenv/libexec/../completions/pyenv.zsh'
pyenv() {
  local command
  command="${1:-}"
  if [ "$#" -gt 0 ]; then
    shift
  fi

  case "$command" in
  rehash|shell)
    eval "$(pyenv "sh-$command" "$@")";;
  *)
    command pyenv "$command" "$@";;
  esac
}
export RBENV_ROOT="/Users/jun.yamada/.anyenv/envs/rbenv"
export PATH="/Users/jun.yamada/.anyenv/envs/rbenv/bin:$PATH"
export PATH="/Users/jun.yamada/.anyenv/envs/rbenv/shims:${PATH}"
export RBENV_SHELL=zsh
source '/Users/jun.yamada/.anyenv/envs/rbenv/libexec/../completions/rbenv.zsh'
rbenv() {
  local command
  command="${1:-}"
  if [ "$#" -gt 0 ]; then
    shift
  fi

  case "$command" in
  rehash|shell)
    eval "$(rbenv "sh-$command" "$@")";;
  *)
    command rbenv "$command" "$@";;
  esac
}
export SCALAENV_ROOT="/Users/jun.yamada/.anyenv/envs/scalaenv"
export PATH="/Users/jun.yamada/.anyenv/envs/scalaenv/bin:$PATH"
export PATH="/Users/jun.yamada/.anyenv/envs/scalaenv/shims:${PATH}"
export SCALAENV_SHELL=zsh
source '/Users/jun.yamada/.anyenv/envs/scalaenv/libexec/../completions/scalaenv.zsh'
 scalaenv() {
  local command
  command="$1"
  if [ "$#" -gt 0 ]; then
    shift
  fi

  case "$command" in
    rehash|shell)
      eval "`scalaenv "sh-$command" "$@"`";;
    * )
      command scalaenv "$command" "$@";;
  esac
}
