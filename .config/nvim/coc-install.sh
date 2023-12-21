#!/bin/bash
# still error running vim -c
lsp=(
coc-ansible
coc-black-formatter
coc-browser
coc-blade
coc-calc
coc-clangd
coc-cmake
coc-css
coc-diagnostic
coc-discord
coc-dash-complete
coc-dot-complete
coc-docker
coc-glint
coc-eslint
#coc-gist
coc-git
coc-go
coc-golines
coc-graphql
coc-highlight
coc-html
coc-java
coc-json
coc-jedi
coc-just-complete
coc-laravel
coc-ltex
coc-markdownlint
coc-nginx
coc-perl
coc-phpls
coc-php-cs-fixer
coc-prettier
coc-python
coc-rust-analyzer
coc-sh
coc-solargraph
coc-spell-checker
coc-sql
coc-toml
coc-tsserver
coc-vimlsp
coc-xml
coc-yaml
coc-yank
)

targets=''
count=0
for l in "${lsp[@]}"; do
  targets="$targets $l"

  if [[ $count -eq 4 ]]; then
    echo  vim -c "'CocInstall -sync $targets|q'"
    unset targets
    count=0
  fi
  count=$((count+1))
done;


