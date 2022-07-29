" Our special key
let mapleader=" "
" Load config from current directory
set exrc
set tabstop=2 softtabstop=2
set shiftwidth=2
" BING BONG!
set noerrorbells
" Clear highlight treatment after <CR> when searching
set nohlsearch
" Make tabs spaces like god intended
set expandtab
" Because I am dum
set smartindent
" Gives some room for linter symbols to let us know when we have errors
set signcolumn=yes
" Scroll offset so you don't have to mash your cursor to the bottom of the screen
set scrolloff=8
" I'll wrap my own lines, thank you.
set nowrap
" Personal preference here, read the docs
set completeopt=menuone,noinsert
" Ain't nobody got time for that
set noswapfile
" Live dangerous
set nobackup
" Infinite undos muahaha
set undodir=~/.vim/undodir
set undofile
" Real time search feedback
set incsearch
" Pretty colors
set termguicolors
" We have an addon that does this
set noshowmode
" I think this keeps buffers in memory even when hidden
set hidden
" More space for commands
set cmdheight=2
" Update more often to keep it snappy. (Default is 4000ms!)
set updatetime=50
" Don't pass messages to |ins-completion-menu|
set shortmess+=c
" Jump to the new window when we split
set spr
" Line numbers are good
set nu
