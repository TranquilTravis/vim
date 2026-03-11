
VimSource plug/autopair.vim
VimSource plug/nerdtree.vim
VimSource plug/gutentags.vim
VimSource plug/git.vim
VimSource plug/align.vim
VimSource plug/colors.vim
VimSource plug/treesitter.vim
VimSource plug/gitsigns.vim
VimSource plug/which-key.vim
VimSource plug/surround.vim
" Fallback for vim (nvim uses treesitter instead)
if !has('nvim')
  VimSource plug/rainbow.vim
endif
VimSource plug/markdown.vim
"VimSource plug/alelint.vim
VimSource plug/ctags.vim
"VimSource plug/tagbar.vim
VimSource plug/lualine.vim
"VimSource plug/clap.vim
VimSource plug/telescope.vim
VimSource plug/vista.vim
" VimSource plug/aerial.vim
"VimSource plug/grep.vim
" Removed: fzf.vim (using telescope)
" Removed: ncm2.vim (using coc.nvim)
"VimSource plug/jedi.vim
VimSource plug/coc.vim
VimSource plug/rust.vim
VimSource plug/go.vim
VimSource plug/spector.vim

