runtime! config/init/*.vim
call map(sort(split(globpath(&runtimepath, 'config/plugin/*.vim'))), {->[execute('exec "so" v:val')]})


"""""" now testing
""" Fern
" Show hidden files
let g:fern#default_hidden=1

" Show file tree with Ctrl+n
nnoremap <C-n> :Fern . -reveal=% -drawer -toggle -width=40<CR>


