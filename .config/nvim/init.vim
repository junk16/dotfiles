
runtime! config/init/style.vim
runtime! config/init/mapping.vim
runtime! config/init/cmd.vim
runtime! config/init/indent.vim
runtime! config/init/plug.vim

call map(sort(split(globpath(&runtimepath, 'config/plugin/*.vim'))), {->[execute('exec "so" v:val')]})


