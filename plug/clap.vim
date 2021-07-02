
" https://github.com/liuchengxu/vim-clap
let g:clap_theme = 'material_design_dark'

nnoremap <silent> <C-f> :Clap files<CR>
nnoremap <silent> gf :Clap grep2<CR>

nnoremap <C-v> :Clap grep ++query=<cword><CR>
xnoremap <C-v> :Clap grep ++query=@visual<CR>

