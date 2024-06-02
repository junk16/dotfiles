syntax on

filetype plugin indent on

autocmd InsertLeave * set iminsert=0 imsearch=0
"
" charactor encode
set fileencoding=utf-8

" key setting
set backspace=indent,eol,start

" clipboard
set clipboard+=unnamed

" behaviour setting
set hidden

" setting display
set number
set cursorline
set cursorcolumn
set guicursor=a:blinkwait700-blinkon400-blinkoff250
set virtualedit=onemore
set smartindent
set visualbell
set laststatus=2
"set statusline=%F\ %y\ [%n]\ [%l:%c\|%L]%<
set showcmd
set showmode

" key setting
set backspace=indent,eol,start

" for grep setting
set wildignore=node_modules/*,tags,GTAGS,GRTAGS,GPATH,build/**,.git/**

" leader
let mapleader = "\<Space>"

"" change ctrl-p map
"let g:ctrlp_map = '<c-l>'

" autocmd BufWritePre * :%s/\s\+$//ge
"
set list listchars=tab:»-,trail:-,extends:»,precedes:«,nbsp:%

au FileType yaml if bufname("%") =~# "docker-compose.yml" | set ft=yaml.docker-compose | endif
au FileType yaml if bufname("%") =~# "compose.yml" | set ft=yaml.docker-compose | endif

