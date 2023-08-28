# .vim

## package directory
`pack/plugins/start/`

## plugins
- ~~ run `git submodule` ~~
- using [vim-plug](https://github.com/junegunn/vim-plug)

## How to install
```
git clone https://github.com/junk16/dotvim.git ~/.vim
cd .vim
```

## How to Add Pluing
- `PlugInstall`
~~ git submodule add  xxxx.git pack/plugins/start/xxx ~~


### preview-markdown.vim
you have to install `[mdr](https://github.com/MichaelMure/mdr)`

```
go install github.com/MichaelMure/mdr@latest
```


### vim-go
run
```
:GoUpdateBinaries gopls
```
