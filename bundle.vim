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
	" Plug 'liuchengxu/vim-clap', { 'do': ':Clap install-binary' }
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.3' }
	Plug 'liuchengxu/vista.vim'
	"Plug 'majutsushi/tagbar'
    " aerial.nvim (disabled - doesn't work with coc.nvim)
    " Plug 'stevearc/aerial.nvim'
    " ctags used to generate tags for c++; u-ctags is the management tool for ctags
	Plug 'universal-ctags/ctags'
	Plug 'ludovicchabant/vim-gutentags'
	" Plug 'ggreer/the_silver_searcher'
	" Plug 'jremmen/vim-ripgrep'
	" Plug 'Yggdroot/LeaderF', { 'do': ':LeaderfInstallCExtension' }
	" Removed: fzf (using telescope instead)
	" Removed: vim-rainbow (using treesitter instead)
	Plug 'tpope/vim-surround'
	Plug 'lewis6991/gitsigns.nvim'
	Plug 'folke/which-key.nvim'
	Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
    " Markdown plugins
    Plug 'nvim-tree/nvim-web-devicons'  
    Plug 'MeanderingProgrammer/render-markdown.nvim'

    Plug 'sindrets/diffview.nvim'
	Plug 'navarasu/onedark.nvim'
	Plug 'flazz/vim-colorschemes'
	Plug 'mkitt/tabline.vim'
	Plug 'JamshedVesuna/vim-markdown-preview' 
	"Plug 'dense-analysis/ale'
	Plug 'tpope/vim-commentary'  "comment-out by gc
	" Plug 'davidhalter/jedi-vim', { 'for': 'python' }
	Plug 'jiangmiao/auto-pairs'
	Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

	Plug 'rust-lang/rust.vim'
	" Removed: ncm2 (using coc.nvim for completion instead)
	
	" lualine.nvim (replaces vim-airline)
	Plug 'nvim-lualine/lualine.nvim'

	" All of your Plugins must be added before the following line
endif
call plug#end()
