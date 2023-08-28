runtime! config/init/vim.vim
runtime! config/init/cmd.vim
runtime! config/init/plug.vim

call map(sort(split(globpath(&runtimepath, 'config/plugin/*.vim'))), {->[execute('exec "so" v:val')]})

