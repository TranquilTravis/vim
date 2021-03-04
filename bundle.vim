let s:home = fnamemodify(resolve(expand('<sfile>:p')), ':h')
let g:bundle_set += ['basic']

call plug#begin('~/.vim/plugged')

if index(g:bundle_set, 'basic') >= 0
	" alternatively, pass a path where Vundle should install plugins
	"call vundle#begin('~/some/path/here')

	" let Vundle manage Vundle, required
	Plug 'VundleVim/Vundle.vim'

	" The following are examples of different formats supported.
	" Keep Plugin commands between vundle#begin/end.
	" plugin on GitHub repo
	Plug 'tpope/vim-fugitive'
	" plugin from http://vim-scripts.org/vim/scripts.html
	" Plugin 'L9'
	" Git plugin not hosted on GitHub
	Plug 'git://git.wincent.com/command-t.git'
	" git repos on your local machine (i.e. when working on your own plugin)
	" Plugin 'file:///home/gmarik/path/to/plugin'
	" The sparkup vim script is in a subdirectory of this repo called vim.
	" Pass the path to set the runtimepath properly.
	Plug 'rstacruz/sparkup', {'rtp': 'vim/'}
	" Install L9 and avoid a Naming conflict if you've already installed a
	" different version somewhere else.
	" Plugin 'ascenator/L9', {'name': 'newL9'}

	Plug 'junegunn/vim-easy-align', { 'on': 'NERDTreeToggle' }
	Plug 'scrooloose/nerdtree'
	Plug 'valloric/youcompleteme'
	Plug 'majutsushi/tagbar'
	Plug 'vim-airline/vim-airline'
	Plug 'universal-ctags/ctags'
	Plug 'ludovicchabant/vim-gutentags'
	Plug 'ggreer/the_silver_searcher'
	Plug 'jremmen/vim-ripgrep'
	Plug 'Yggdroot/LeaderF', { 'do': ':LeaderfInstallCExtension' }
	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
	Plug 'junegunn/fzf.vim'
	Plug 'frazrepo/vim-rainbow'
	Plug 'flazz/vim-colorschemes'
	Plug 'mkitt/tabline.vim'
	Plug 'JamshedVesuna/vim-markdown-preview' 
	Plug 'dense-analysis/ale'
	Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

	" All of your Plugins must be added before the following line
endif
call plug#end()
