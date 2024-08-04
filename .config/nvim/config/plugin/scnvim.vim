"let g:sclangTerm = "open -a iTerm.app"
" let g:scSplitDirection = "h"



"" -- vim.g.scnvim_sclang_options = {'-l', "/home/mads/.config/SuperCollider/sclang_conf_development.yaml"}
"
"vim.g.scnvim_postwin_syntax_hl = 1
"
"" -- scnvim neovim docs !
"vim.g.scnvim_scdoc = 1
"
"" -- vertical 'v' or horizontal 'h' split
"vim.g.scnvim_postwin_orientation = 'v'
"
"" -- position of the post window 'right' or 'left'
"vim.g.scnvim_postwin_direction = 'right'
"
"" -- default is half the terminal size for vertical and a third for horizontal
"vim.g.scnvim_postwin_size = 50
"
"" -- automatically open post window on a SuperCollider error
"vim.g.scnvim_postwin_auto_toggle = 1
"
"" --	-- duration of the highlight
"vim.g.scnvim_eval_flash_duration = 100
"
"" -- number of flashes. A value of 0 disables this feature.
"vim.g.scnvim_eval_flash_repeats = 2
"
"" -- set this variable if you don't want the "echo args" feature
"" -- vim.g.scnvim_echo_args = 0
"
"" -- Configure the color of the evaluation flash
"vim.cmd([[ highlight SCNvimEval guifg=black guibg=white ctermfg=black ctermbg=white ]])
"
"" -- Uncomment to not use default keybindings
"" -- vim.g.scnvim_no_mappings = 1

" file: init.vim
lua << EOF
local scnvim = require 'scnvim'
local map = scnvim.map
local map_expr = scnvim.map_expr

scnvim.setup({
  keymaps = {
    ['<M-e>'] = map('editor.send_line', {'i', 'n'}),
    ['<C-e>'] = {
      map('editor.send_block', {'i', 'n'}),
      map('editor.send_selection', 'x'),
    },
    ['<CR>'] = map('postwin.toggle'),
    ['<M-CR>'] = map('postwin.toggle', 'i'),
    ['<M-L>'] = map('postwin.clear', {'n', 'i'}),
    ['<F4>'] = map('signature.show', {'n', 'i'}),
    ['<F12>'] = map('sclang.hard_stop', {'n', 'x', 'i'}),
    ['<leader>st'] = map('sclang.start'),
    ['<leader>sk'] = map('sclang.recompile'),
    ['<F1>'] = map_expr('s.boot'),
    ['<F2>'] = map_expr('s.meter'),
  },
  editor = {
    highlight = {
      color = 'IncSearch',
    },
  },
  postwin = {
    float = {
      enabled = true,
    },
  },
})
EOF
