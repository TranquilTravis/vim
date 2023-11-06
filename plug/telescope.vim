" Find files using Telescope command-line sugar.
nnoremap <silent><C-f> <cmd>Telescope find_files<cr>
nnoremap <silent>gf <cmd>Telescope live_grep<cr>
nnoremap <silent><C-b> <cmd>Telescope grep_string<cr>
nnoremap <silent>fb <cmd>Telescope buffers<cr>
nnoremap <silent>fh <cmd>Telescope help_tags<cr>

" Using Lua functions
nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>
