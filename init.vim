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
syntax on

set relativenumber
set mouse=a  " change cursor per mode
set number
set hlsearch		" enable search highlights
set incsearch 		" highlight incremental search
set autoindent          " auto indent
set nobackup
set tabstop=4
set shiftwidth=4
set fillchars+=vert:\  " remove chars from seperators
set softtabstop=4

set undodir=$HOME/.vim/undodir
set undofile
"set guifont=Menlo\ Regular:h15

" jedi settings
let g:python3_host_prog = substitute(system('which python3'), "\n", '', 'g')
let g:ycm_server_python_interpreter=g:python3_host_prog
let g:deoplete#enable_at_startup = 1

" plugin for different vim
" https://github.com/junegunn/vim-plug#neovim
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

if !isdirectory(&undodir) 
	call mkdir(&undodir, 'p', 0700)
endif

" set mapleader
" let mapleader = ";"
" show full path of file name underneath
set statusline+=%F
set clipboard+=unnamedplus
let g:go_disable_autoinstall = 0

" easy breakpoint python
au FileType python map <silent> <leader>j ofrom pdb import set_trace; set_trace()<esc>
