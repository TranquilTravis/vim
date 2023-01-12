let s:home = fnamemodify(resolve(expand('<sfile>:p')), ':h')
let g:bundle_set += ['basic']

call plug#begin('~/.vim/plugged')

if index(g:bundle_set, 'basic') >= 0
	" alternatively, pass a path where Vundle should install plugins
	"call vundle#begin('~/some/path/here')

	" let Vundle manage Vundle, required
	Plug 'VundleVim/Vundle.vim'
	Plug 'tpope/vim-fugitive'	" plugin on GitHub repo
	Plug 'zivyangll/git-blame.vim'  " git blame information

	" Plug 'git://git.wincent.com/command-t.git'
	" Plug 'rstacruz/sparkup', {'rtp': 'vim/'}	" help on http
	Plug 'junegunn/vim-easy-align',
	Plug 'lambdalisue/vim-manpager' " plugin to use Vim as a MANPAGER
	Plug 'scrooloose/nerdtree'
	"Plug 'valloric/youcompleteme'
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'puremourning/vimspector'
	Plug 'liuchengxu/vim-clap', { 'do': ':Clap install-binary' }
	Plug 'liuchengxu/vista.vim'
	"Plug 'majutsushi/tagbar'
	Plug 'vim-airline/vim-airline'  " make statusline awesome
	Plug 'vim-airline/vim-airline-themes'  " themes for statusline
    " ctags used to generate tags for c++; u-ctags is the management tool for ctags
	Plug 'universal-ctags/ctags'
	Plug 'ludovicchabant/vim-gutentags'
	" Plug 'ggreer/the_silver_searcher'
	" Plug 'jremmen/vim-ripgrep'
	" Plug 'Yggdroot/LeaderF', { 'do': ':LeaderfInstallCExtension' }
	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
	Plug 'junegunn/fzf.vim'
	Plug 'antoinemadec/coc-fzf'
	Plug 'frazrepo/vim-rainbow'
	Plug 'flazz/vim-colorschemes'
	Plug 'mkitt/tabline.vim'
	Plug 'JamshedVesuna/vim-markdown-preview' 
	"Plug 'dense-analysis/ale'
	Plug 'tpope/vim-commentary'  "comment-out by gc
	" Plug 'davidhalter/jedi-vim', { 'for': 'python' }
	Plug 'jiangmiao/auto-pairs'
	Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

	Plug 'rust-lang/rust.vim'
    Plug 'roxma/nvim-yarp'
	Plug 'ncm2/ncm2'
    " Plug 'ncm2/ncm2-jedi'
	" Words in buffer completion
    Plug 'ncm2/ncm2-bufword'
	" File path completion
	Plug 'ncm2/ncm2-path'
    Plug 'ncm2/ncm2-match-highlight'
	
	" All of your Plugins must be added before the following line
endif
call plug#end()
