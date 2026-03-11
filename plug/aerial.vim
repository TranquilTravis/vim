lua << EOF
require('aerial').setup({
  backends = { 'treesitter', 'lsp' },
})

vim.keymap.set('n', '<leader>o', ':AerialToggle<CR>')
EOF
