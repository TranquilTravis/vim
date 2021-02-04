
" map Tagbar to F8
nmap <F4> :TagbarToggle<CR>

" map Files command for FZF to ctrl+f
nnoremap <silent> <C-f> :Files<CR>
nnoremap <silent> <Leader>f :Rg<CR>

" rainbow setting
" others
" disable search highlights
nnoremap <esc><esc> :noh<return><esc> 


" ############# shortcut settings ####################
" autocomplete
inoremap ( ()<Esc>i
inoremap [ []<Esc>i
inoremap { {}<Esc>i
inoremap " ""<Esc>i
inoremap <lt> <lt>><Esc>i
" backspace delete
nnoremap <C-x> i<BS><Esc>
" window movement"
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
" Go to tab by number
noremap <leader>1 1gt
noremap <leader>2 2gt
noremap <leader>3 3gt
noremap <leader>4 4gt
noremap <leader>5 5gt
noremap <leader>6 6gt
noremap <leader>7 7gt
noremap <leader>8 8gt
noremap <leader>9 9gt
noremap <leader>0 :tablast<cr>

" copy to clipboard in visual mode

" markdown
