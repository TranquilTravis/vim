
" map Tagbar to F4
nmap <F4> :TagbarToggle<CR>

" rainbow setting
" others
" disable search highlights
nnoremap <esc><esc> :noh<return><esc> 


" ############# shortcut settings ####################
" move in insert mode
inoremap <C-h> <Esc>hi
inoremap <C-j> <C-w>j
inoremap <C-k> <C-w>k
inoremap <C-l> <C-w>l

" autocomplete
"inoremap ( ()<Esc>i
"inoremap [ []<Esc>i
"inoremap { {}<Esc>i
"inoremap " ""<Esc>i
"inoremap ' ''<Esc>i
"inoremap <lt> <lt>><Esc>i
" backspace delete
nnoremap <C-x> i<BS><Esc>
"
"----------------------------------------------------------------------
" window control
"----------------------------------------------------------------------
noremap <silent><space>= :resize +3<cr>
noremap <silent><space>- :resize -3<cr>
noremap <silent><space>, :vertical resize -3<cr>
noremap <silent><space>. :vertical resize +3<cr>

if g:sys_uname == 'darwin' || g:sys_uname == 'linux'
	execute "set <M-H>=\eH"
	execute "set <M-J>=\eJ"
	execute "set <M-K>=\eK"
	execute "set <M-L>=\eL"
endif

noremap <M-H> <C-w>h
noremap <M-J> <C-w>j
noremap <M-K> <C-w>k
noremap <M-L> <C-w>l

"----------------------------------------------------------------------
" Go to tab by number
"----------------------------------------------------------------------
noremap <silent><tab>1 1gt
noremap <silent><tab>2 2gt
noremap <silent><tab>3 3gt
noremap <silent><tab>4 4gt
noremap <silent><tab>5 5gt
noremap <silent><tab>6 6gt
noremap <silent><tab>7 7gt
noremap <silent><tab>8 8gt
noremap <silent><tab>9 9gt
noremap <silent><tab>0 :tablast<cr>
noremap <silent><tab>h gT<cr>
noremap <silent><tab>l gt<cr>

"----------------------------------------------------------------------
" Movement 
"----------------------------------------------------------------------
inoremap <C-h> <Left>
inoremap <C-l> <Right>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
cnoremap <C-h> <Left>
cnoremap <C-l> <Right>
cnoremap <C-b> <left>
cnoremap <C-f> <c-right>

"----------------------------------------------------------------------
" nerdtree file management
"----------------------------------------------------------------------
nnoremap <silent><F2> :NERDTreeFind<CR>

" copy to clipboard in visual mode
" markdown
