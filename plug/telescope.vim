" Telescope configuration
" Provides: Fuzzy finder for files, grep, buffers, LSP symbols, etc.
" NOTE: This plugin requires Neovim (nvim), not vim

if !has('nvim')
  " Fallback mappings for vim without telescope
  finish
endif

lua << EOF
local actions = require('telescope.actions')
local builtin = require('telescope.builtin')

require('telescope').setup {
  defaults = {
    prompt_prefix = " ",
    selection_caret = "> ",
    entry_prefix = "  ",
    initial_mode = "insert",
    selection_strategy = "reset",
    sorting_strategy = "descending",
    layout_strategy = "horizontal",
    layout_config = {
      horizontal = {
        mirror = false,
        preview_width = 0.5,
      },
      vertical = {
        mirror = false,
      },
      width = 0.75,
      height = 0.75,
      preview_cutoff = 120,
    },
    file_ignore_patterns = {
      "node_modules",
      ".git",
      "__pycache__",
      "*.pyc",
      "target/debug",
      "target/release",
      "dist",
      "build",
      ".next",
    },
    path_display = { "truncate" },
    winblend = 0,
    border = {},
    borderchars = { '─', '│', '─', '│', '╭', '╮', '╯', '╰' },
    color_devicons = true,
    use_less = true,
    set_env = { ['COLORTERM'] = 'truecolor' },
    preview = {
      treesitter = false,
    },
    mappings = {
      i = {
        ["<C-n>"] = actions.move_selection_next,
        ["<C-p>"] = actions.move_selection_previous,
        ["<C-c>"] = actions.close,
        ["<C-j>"] = actions.move_selection_next,
        ["<C-k>"] = actions.move_selection_previous,
        ["<C-q>"] = actions.send_to_qflist + actions.open_qflist,
        ["<CR>"] = actions.select_default,
        ["<C-x>"] = actions.select_horizontal,
        ["<C-v>"] = actions.select_vertical,
        ["<C-t>"] = actions.select_tab,
        ["<C-u>"] = actions.preview_scrolling_up,
        ["<C-d>"] = actions.preview_scrolling_down,
        ["<Tab>"] = actions.toggle_selection + actions.move_selection_worse,
        ["<S-Tab>"] = actions.toggle_selection + actions.move_selection_better,
      },
      n = {
        ["<esc>"] = actions.close,
        ["<CR>"] = actions.select_default,
        ["<C-x>"] = actions.select_horizontal,
        ["<C-v>"] = actions.select_vertical,
        ["<C-t>"] = actions.select_tab,
        ["j"] = actions.move_selection_next,
        ["k"] = actions.move_selection_previous,
        ["?"] = actions.which_key,
      },
    },
  },
  pickers = {
    find_files = {
      theme = "dropdown",
      previewer = false,
      hidden = true,
    },
    buffers = {
      theme = "dropdown",
      previewer = false,
      sort_lastused = true,
      sort_mru = true,
    },
    live_grep = { theme = "ivy" },
    grep_string = { theme = "ivy" },
    help_tags = { theme = "ivy" },
  },
}
EOF

" Key mappings for Telescope
nnoremap <silent><C-f> <cmd>Telescope find_files<cr>
nnoremap <silent><C-b> <cmd>Telescope buffers<cr>
nnoremap <silent>gf <cmd>Telescope live_grep<cr>
nnoremap <silent><leader>ff <cmd>Telescope find_files<cr>
nnoremap <silent><leader>fg <cmd>Telescope live_grep<cr>
nnoremap <silent><leader>fb <cmd>Telescope buffers<cr>
nnoremap <silent><leader>fh <cmd>Telescope help_tags<cr>
nnoremap <silent><leader>fr <cmd>Telescope oldfiles<cr>
nnoremap <silent><leader>fc <cmd>Telescope grep_string<cr>
nnoremap <silent><leader>gf <cmd>Telescope git_files<cr>
nnoremap <silent><leader>gc <cmd>Telescope git_commits<cr>
