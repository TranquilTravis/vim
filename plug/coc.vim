" :CocInstall coc-json	# https://github.com/neoclide/coc-json
" :CocInstall coc-rls  # https://github.com/neoclide/coc-rls
" :CocInstall coc-rust-analyzer	# https://github.com/fannheyward/coc-rust-analyzer
" :CocInstall coc-snippets

inoremap <silent><expr> <TAB>
      \ pumvisible() ? coc#_select_confirm() :
      \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

let g:coc_snippet_next = '<tab>'
nnoremap <silent><leader>c :CocFzfList<cr> 
nnoremap <silent><leader>ff :call CocActionAsync('jumpDefinition')<cr> 
nnoremap <silent> <leader>h :call CocActionAsync('doHover')<cr>

