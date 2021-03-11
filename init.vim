let s:home = fnamemodify(resolve(expand('<sfile>:p')), ':h')

if has('win32') || has('win64') || has('win95') || has('win16')
	let g:sys_uname = 'windows'
elseif has('win32unix')
	let g:sys_uname = 'cygwin'
elseif has('unix') && (has('mac') || has('macunix'))
	let g:sys_uname = 'darwin'
elseif has('unix')
	let s:uname = substitute(system("uname"), '\s*\n$', '', 'g')
	if v:shell_error == 0 && match(s:uname, 'Linux') >= 0
		let g:sys_uname = 'linux'
	elseif v:shell_error == 0 && match(s:uname, 'FreeBSD') >= 0
		let g:sys_uname = 'freebsd'
	elseif v:shell_error == 0 && match(s:uname, 'Darwin') >= 0
		let g:sys_uname = 'darwin'
	else
		let g:sys_uname = 'posix'
	endif
else
	let g:sys_uname = 'posix'
endif


filetype on
filetype plugin on
filetype plugin indent on

set relativenumber
set number
set hlsearch		" enable search highlights
set incsearch 		" highlight incremental search
set expandtab		" use space as default indent
syntax on
" set mapleader
" let mapleader = ";"
" show full path of file name underneath
set statusline+=%F
set clipboard+=unnamed
let g:go_disable_autoinstall = 0
