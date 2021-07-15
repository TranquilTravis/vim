
" https://github.com/liuchengxu/vim-clap
let g:clap_theme = 'material_design_dark'
autocmd FileType clap_input let g:completion_enable_auto_pop = 0

nnoremap <silent> <C-f> :Clap files<CR>
nnoremap <silent> gf :Clap grep<CR>

nnoremap <C-b> :Clap grep ++query=<cword><CR>
xnoremap <C-b> :Clap grep ++query=@visual<CR>

" you should install:
" 
" curl https://sh.rustup.rs -sSf | sh
" :call clap#installer#download_binary()
"
