"vim-plug setting
call plug#begin()
"Plug 'kien/ctrlp.vim'
Plug 'ctrlpvim/ctrlp.vim'
"Plug 'preservim/nerdtree'
"Plug 'preservim/nerdcommenter'
Plug 'vim-airline/vim-airline'
Plug 'fatih/vim-go'
Plug 'tpope/vim-surround'
Plug 'yegappan/taglist'
Plug 'dhruvasagar/vim-table-mode'
Plug 'easymotion/vim-easymotion'
Plug 'vim-scripts/taglist.vim'
Plug 'lighttiger2505/gtags.vim'
Plug 'rust-lang/rust.vim'
Plug 'chrisbra/csv.vim'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
Plug 'stephpy/vim-yaml'
Plug 'junk16/vim-gitgrep'
Plug 'sainnhe/everforest'
Plug 'lewis6991/gitsigns.nvim' " for barbar.nvim
Plug 'nvim-tree/nvim-web-devicons' " for barbar.nvim
Plug 'romgrk/barbar.nvim'
Plug 'lewis6991/gitsigns.nvim'
Plug 'kylechui/nvim-surround'
Plug 'lambdalisue/fern.vim'
Plug 'lambdalisue/fern-git-status.vim'
Plug 'roblillack/vim-bufferlist'

""" lsp setting
"Plug 'prabirshrestha/asyncomplete.vim'
"Plug 'prabirshrestha/asyncomplete-lsp.vim'
"Plug 'prabirshrestha/vim-lsp'
"Plug 'mattn/vim-lsp-settings'
"Plug 'Shougo/deoplete.nvim'
"Plug 'lighttiger2505/deoplete-vim-lsp'
"Plug 'hrsh7th/vim-vsnip'
"Plug 'hrsh7th/vim-vsnip-integ'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()


