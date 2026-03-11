" which-key.nvim configuration
" NOTE: This plugin requires Neovim (nvim), not vim

if !has('nvim')
  finish
endif

lua << EOF
require("which-key").setup({
  plugins = {
    marks = true,
    registers = true,
    spelling = { enabled = false },
    presets = {
      operators = true,
      motions = true,
      text_objects = true,
      windows = true,
      nav = true,
      z = true,
      g = true,
    },
  },
  icons = {
    breadcrumb = "»",
    separator = ">",
    group = "+",
    ellipsis = "...",
    keys = {
      Up = "^",
      Down = "v",
      Left = "<",
      Right = ">",
      C = "C",
      M = "M",
      D = "D",
      S = "S",
      CR = "CR",
      Esc = "ESC",
      Space = "SPC",
      Tab = "TAB",
      BS = "BS",
    },
  },
})

require("which-key").add({
  { "<leader>f", group = "Find (Telescope)" },
  { "<leader>g", group = "Git" },
  { "<leader>h", group = "Hunks (Gitsigns)" },
  { "<leader>t", group = "Toggle" },
  { "<leader>c", group = "Code (LSP)" },
  { "<leader>b", group = "Buffer" },
  { "<leader>w", group = "Window" },
  { "<leader>s", group = "Search" },
  { ";",       group = "Which-key (semicolon)" },
})

vim.cmd('nnoremap <silent> <leader> :WhichKey<CR>')
EOF
