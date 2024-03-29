" https://github.com/puremourning/vimspector#quick-start
" :VimspectorInstall CodeLLDB	for rust
" :VimspectorInstall debugpy    for python
" :VimspectorInstall vscode-go	for golang

"let g:vimspector_enable_mappings = 'HUMAN'
"let g:vimspector_install_gadgets = [ 'debugpy', 'vscode-go', 'CodeLLDB' ]

" nmap <F6> <Plug>VimspectorContinue
nmap <F6> :call vimspector#Launch()<CR>

" di means debug inspect
" for normal mode - the word under the cursor
nmap <Leader>di <Plug>VimspectorBalloonEval
" for visual mode, the visually selected text
xmap <Leader>di <Plug>VimspectorBalloonEval

nmap <leader>du <Plug>VimspectorUpFrame
nmap <leader>dd <Plug>VimspectorDownFrame
nmap <leader>dc <Plug>VimspectorContinue
nmap <leader>ds <Plug>VimspectorStop
nmap <leader>dr <Plug>VimspectorRestart
nmap <leader>dp <Plug>VimspectorPause
nmap <leader>dbl <Plug>VimspectorToggleBreakpoint
nmap <leader>dbc <Plug>VimspectorToggleConditionalBreakpoint
nmap <leader>dbf <Plug>VimspectorAddFunctionBreakpoint
nmap <leader>ss <Plug>VimspectorStepOver
nmap <F9> <Plug>VimspectorStepOver
nmap <leader>si <Plug>VimspectorStepInto
nmap <F10> <Plug>VimspectorStepInto
nmap <leader>so <Plug>VimspectorStepOut
nmap <F11> <Plug>VimspectorStepOut
nmap <leader>dl :call vimspector#ClearBreakpoints()<CR>

nmap <leader>dx :VimspectorReset<CR>
