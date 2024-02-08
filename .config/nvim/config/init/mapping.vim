syntax on

" key mapping
noremap <C-c> <Esc>
inoremap <C-c> <Esc>
inoremap <silent> jj <Esc>
nnoremap <silent> <leader>q :wq<CR>
nnoremap <silent> <leader>w :w<CR>
nnoremap <silent> <leader>gg :LazyGit<CR>

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


" gtags.vim
nnoremap <silent> <Space>f :Gtags -f %<CR>
nnoremap <silent> <Space>j :GtagsCursor<CR>
nnoremap <silent> <Space>d :<C-u>exe('Gtags '.expand('<cword>'))<CR>
nnoremap <silent> <Space>r :<C-u>exe('Gtags -r '.expand('<cword>'))<CR>

" QuickFix
nnoremap Q q
nnoremap <silent> qj  :cnext<Return>
nnoremap <silent> qk  :cprevious<Return>
nnoremap <silent> qr  :crewind<Return>
nnoremap <silent> qK  :cfirst<Return>
nnoremap <silent> qJ  :clast<Return>
nnoremap <silent> qf  :cnfile<Return>
nnoremap <silent> qF  :cpfile<Return>
nnoremap <silent> ql  :clist<Return>
nnoremap <silent> qq  :cc<Return>
nnoremap <silent> qo  :copen<Return>
nnoremap <silent> qc  :cclose<Return>
nnoremap <silent> qw  :cwindow<Return>
nnoremap <silent> qp  :colder<Return>
nnoremap <silent> qn  :cnewer<Return>
nnoremap <silent> qm  :make<Return>
nnoremap <silent> qM  :make<Space>
nnoremap <silent> qg  :grep<Space>
nnoremap <silent> q   <Nop>
