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
