" :CocInstall coc-json	# https://github.com/neoclide/coc-json
" :CocInstall coc-rls  # https://github.com/neoclide/coc-rls
" :CocInstall coc-rust-analyzer	# https://github.com/fannheyward/coc-rust-analyzer
" :CocInstall coc-snippets
" :CocInstall coc-pyright	# https://github.com/fannheyward/coc-pyright
" :CocInstall coc-tsserver for javascript

" inoremap <silent><expr> <TAB>
"       \ pumvisible() ? coc#_select_confirm() :
"       \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
"       \ <SID>check_back_space() ? "\<TAB>" :
"       \ coc#refresh()
" 
" function! s:check_back_space() abort
"   let col = col('.') - 1
"   return !col || getline('.')[col - 1]  =~# '\s'
" endfunction

" Make <tab> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice.
inoremap <silent><expr> <tab> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

let g:coc_snippet_next = '<tab>'
nnoremap <silent><leader>c :CocFzfList<cr> 
nnoremap <silent><leader>ff :call CocActionAsync('jumpDefinition')<cr> 
nnoremap <silent> <leader>h :call CocActionAsync('doHover')<cr>

" GoTo code navigation
nmap <silent><leader>gd <Plug>(coc-definition)
nmap <silent><leader>gy <Plug>(coc-type-definition)
nmap <silent><leader>gi <Plug>(coc-implementation)
nmap <silent><leader>gr <Plug>(coc-references)

" nnoremap <silent><leader>ga <Plug>(coc-codeaction-cursor)
" nnoremap <silent><leader>gg <Plug>(coc-codelens-action)
