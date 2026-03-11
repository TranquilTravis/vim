" nvim-treesitter configuration
" Provides: syntax highlighting, indentation, code folding, rainbow parentheses
" NOTE: This plugin requires Neovim (nvim), not vim

if !has('nvim')
  finish
endif

lua << EOF
require('nvim-treesitter').setup({
  ensure_installed = { 
    "go", "rust", "python", "typescript", "javascript", "ecma",
    "c", "cpp", "lua", "vim", "vimdoc", "markdown", "json", "yaml"
  },
  auto_install = true,
})
EOF

" Enable Treesitter based folding
set foldmethod=expr
set foldexpr=nvim_treesitter#foldexpr()
set foldlevel=99  " Start with all folds open
