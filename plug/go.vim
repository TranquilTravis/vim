" show variable type at bottom of window
let g:go_auto_type_info = 0
let g:go_updatetime = 1200
" 自动化高亮cursor所在word
let g:go_auto_sameids = 1

nnoremap <leader>t :GoInfo<CR>

nmap <silent> <leader>gd <Plug>(coc-definition)
nmap <silent> <leader>gt <Plug>(coc-type-definition)
nmap <silent> <leader>gi <Plug>(coc-implementation)
nmap <silent> <leader>gr <Plug>(coc-references)
