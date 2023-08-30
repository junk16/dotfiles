syntax on

filetype plugin indent on

" charactor encode
set fileencoding=utf-8

" behaviour setting
set hidden


" setting display
set number
set cursorline
"set cursorcolumn
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

" key mapping
noremap <C-c> <Esc>
inoremap <C-c> <Esc>
inoremap <silent> jj <Esc>

" ignore cursor key
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
inoremap <Up> <Nop>
inoremap <Down> <Nop>
inoremap <Left> <Nop>
inoremap <Right> <Nop>

" move in insert mode
inoremap <C-j>  <DOWN>
inoremap <C-k>  <UP>
inoremap <C-h>  <LEFT>
inoremap <C-l>  <RIGHT>
inoremap <C-d> <DEL>
imap <C-b> <BS>

"inoremap { {}<LEFT>
"inoremap [ []<LEFT>
"inoremap ( ()<LEFT>
"inoremap < <><LEFT>
"inoremap " ""<LEFT>
"inoremap ' ''<LEFT>
"inoremap ` ``<LEFT>

" for Buffer List
nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> ]b :bnext<CR>
nnoremap <silent> [B :bfirst<CR>
nnoremap <silent> ]B :blast<CR>”

" for grep setting
set wildignore=node_modules/*,tags,GTAGS,GRTAGS,GPATH,build/**,.git/**

" gtags.vim
nnoremap <silent> <Space>f :Gtags -f %<CR>
nnoremap <silent> <Space>j :GtagsCursor<CR>
nnoremap <silent> <Space>d :<C-u>exe('Gtags '.expand('<cword>'))<CR>
nnoremap <silent> <Space>r :<C-u>exe('Gtags -r '.expand('<cword>'))<CR>
