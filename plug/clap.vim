
" https://github.com/liuchengxu/vim-clap
let g:clap_theme = 'material_design_dark'
autocmd FileType clap_input let g:completion_enable_auto_pop = 0

nnoremap <silent> <C-f> :Clap files<CR>
nnoremap <silent> gf :Clap grep2<CR>

nnoremap <C-b> :Clap grep ++query=<cword><CR>
xnoremap <C-b> :Clap grep ++query=@visual<CR>

