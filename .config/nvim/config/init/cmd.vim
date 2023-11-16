" user command 
command! Goc GoCoverage -gcflags=-l
command! W w
command! Q q!

augroup GrepCmd
    autocmd!
   " autocmd QuickFixCmdPost vim,grep,make if len(getqflist()) != 0 | cwindow | endif
    autocmd QuickFixCmdPost *grep* cwindow
    autocmd QuickFixCmdPost *make* cwindow
augroup END

if executable('rg')
    let &grepprg = 'rg --vimgrep --hidden'
    set grepformat=%f:%l:%c:%m
endif


