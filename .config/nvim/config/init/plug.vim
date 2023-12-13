"vim-plug setting
call plug#begin()

"Plug 'kien/ctrlp.vim'
"Plug 'preservim/nerdcommenter'
"Plug 'preservim/nerdtree'
Plug 'chrisbra/csv.vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'davidgranstrom/scnvim'
Plug 'dhruvasagar/vim-table-mode'
Plug 'easymotion/vim-easymotion'
Plug 'fatih/vim-go'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && npx --yes yarn install' }
Plug 'junk16/vim-gitgrep'
Plug 'kylechui/nvim-surround'
Plug 'lambdalisue/fern-git-status.vim'
Plug 'lambdalisue/fern.vim'
Plug 'lewis6991/gitsigns.nvim'
Plug 'lewis6991/gitsigns.nvim' " for barbar.nvim
Plug 'lighttiger2505/gtags.vim'
Plug 'nvim-tree/nvim-web-devicons' " for barbar.nvim
Plug 'roblillack/vim-bufferlist'
Plug 'romgrk/barbar.nvim'
Plug 'rust-lang/rust.vim'
Plug 'sainnhe/everforest'
Plug 'stephpy/vim-yaml'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'vim-scripts/taglist.vim'
Plug 'yegappan/taglist'

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


