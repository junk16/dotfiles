au FileType yaml if bufname("%") =~# "docker-compose.yml" | set ft=yaml.docker-compose | endif
au FileType yaml if bufname("%") =~# "compose.yml" | set ft=yaml.docker-compose | endif

let g:coc_filetype_map = {
  \ 'yaml.docker-compose': 'dockercompose',
  \ }

hi Pmenu ctermfg=black ctermbg=DarkGreen 
hi PmenuSel ctermfg=white ctermbg=DarkGreen 
hi CocErrorSign ctermfg=red  guibg=red
hi CocErrorFloat ctermfg=white ctermbg=red
hi CocInfoSign ctermfg=green 
hi CocInfoFloat ctermfg=red ctermbg=blue
hi CocWarningSign ctermfg=white ctermbg=yellow
