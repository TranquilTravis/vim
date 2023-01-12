
imap jj <Esc>
" rainbow setting
" others
" disable search highlights
nnoremap <C-c><C-c> :noh<return><esc> 


" autocomplete
inoremap ( ()<Esc>i
inoremap [ []<Esc>i
inoremap { {}<Esc>i
inoremap " ""<Esc>i
inoremap ' ''<Esc>i
inoremap <lt> <lt>><Esc>i
" backspace delete
nnoremap <C-x> i<BS><Esc>
inoremap <C-c> <ESC>
cnoremap <C-c> <ESC>

" map ctr-a to goto front in command mode
cnoremap <C-A> <Home>
" IMPORTANT: you can use q: to open the command-line window
"
"----------------------------------------------------------------------
" window control
"----------------------------------------------------------------------
noremap <silent><space>= :resize +3<cr>
noremap <silent><space>- :resize -3<cr>
noremap <silent><space>, :vertical resize -3<cr>
noremap <silent><space>. :vertical resize +3<cr>

nnoremap <M-Tab>   <C-W>w
inoremap <M-Tab>   <C-O><C-W>w
nnoremap <M-S-Tab> <C-W>W
inoremap <M-S-Tab> <C-O><C-W>W

" if g:sys_uname == 'darwin' || g:sys_uname == 'linux'
" 	execute "set <M-H>=\eH"
" 	execute "set <M-J>=\eJ"
" 	execute "set <M-K>=\eK"
" 	execute "set <M-L>=\eL"
" endif

" noremap <M-H> <C-w>h
" noremap <M-J> <C-w>j
" noremap <M-K> <C-w>k
" noremap <M-L> <C-w>l

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
noremap <silent><tab>h gT
noremap <silent><tab>l gt

"----------------------------------------------------------------------
" Movement 
"----------------------------------------------------------------------
" inoremap <C-h> <Left>
" inoremap <C-l> <Right>
" inoremap <C-j> <Down>
" inoremap <C-k> <Up>
" ############# shortcut settings ####################
" move in insert mode
inoremap <silent><M-h> <Left>
inoremap <silent><M-j> <C-o>gj
inoremap <silent><M-k> <C-o>gk
inoremap <silent><M-l> <Right>

cnoremap <C-h> <Left>
cnoremap <C-l> <Right>
cnoremap <C-b> <left>
cnoremap <C-f> <right>
cnoremap <C-p> <Up>
cnoremap <C-n> <Down>


" copy to clipboard in visual mode
" markdown
"
"----------------------------------------------------------------------
" Cheat Sheet
"----------------------------------------------------------------------
" Alt-p: enable or disable AutoPairs
