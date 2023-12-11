runtime! config/init/*.vim
call map(sort(split(globpath(&runtimepath, 'config/plugin/*.vim'))), {->[execute('exec "so" v:val')]})

