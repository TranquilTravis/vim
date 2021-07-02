" https://github.com/liuchengxu/vista.vim
nmap <F4> :Vista!!<CR>

" show the nearest method/function in the statusline
function! NearestMethodOrFunction() abort
  return get(b:, 'vista_nearest_method_or_function', '')
endfunction

set statusline+=%{NearestMethodOrFunction()}

" By default vista.vim never run if you don't call it explicitly.
"
" If you want to show the nearest function in your statusline automatically,
" you can add the following line to your vimrc
autocmd VimEnter * call vista#RunForNearestMethodOrFunction()


" How each level is indented and what to prepend.
" This could make the display more compact or more spacious.
" e.g., more compact: ["▸ ", ""]
" Note: this option only works for the kind renderer, not the tree renderer.
" let g:vista_icon_indent = ["╰─▸ ", "├─▸ "]

" Executive used when opening vista sidebar without specifying it.
" See all the avaliable executives via `:echo g:vista#executives`.
let g:vista_default_executive = 'ctags'
let g:vista#executive#ctags#support_json_format = 1
let g:vista#render#ctags = 'default'
let g:vista#renderer#ctags = 'default'
let g:vista#renderer#default#vlnum_offset = 3
let g:vista#renderer#enable_icon = 1
