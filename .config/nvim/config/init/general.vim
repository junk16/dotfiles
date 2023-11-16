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


