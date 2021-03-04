" Ag不包含文件名内容
command! -bang -nargs=* Ag call fzf#vim#ag(<q-args>, {'options': '--delimiter : --nth 4..'}, <bang>0)

" map Files command for FZF to ctrl+f
nnoremap <silent> <C-f> :Files<CR>
nnoremap <silent> <Leader>f :Leaderf rg<CR>
"nnoremap <silent> <Leader>f :Ag<CR>

let g:Lf_PreviewInPopup = 1
let g:Lf_WindowPosition = 'popup'
let g:Lf_CommandMap = {'<C-K>': ['<Up>'], '<C-J>': ['<Down>']}
