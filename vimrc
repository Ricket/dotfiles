runtime bundle/vim-pathogen/autoload/pathogen.vim
call pathogen#infect()

set nocompatible

let mapleader=","

" %% will insert the current file's directory
cnoremap %% <C-R>=expand('%:h').'/'<cr>

" ,, will switch between two files
nnoremap <leader><leader> <c-^>

" remember more commands and search history
set history=10000

syntax on
filetype plugin indent on
set background=dark
colorscheme solarized

set expandtab
set tabstop=4
set shiftwidth=4

" always show status bar
set laststatus=2
" when bracket is inserted, flash the matching one
set showmatch
" as you type your search, highlight matches
set incsearch
" underline search matches after search is performed
set hlsearch
" ignore case in search except if contains uppercase letters
set ignorecase smartcase
" highlight cursor line
set cursorline
" use two lines for command-line
set cmdheight=2

" enable line numbers
set number
" use minimum of 5 columns for line number
set numberwidth=5
" always show line with tabs
set showtabline=2
" default to bash
set shell=bash
" keep 3 lines above and below cursor at all times
set scrolloff=3

" show column 80
set colorcolumn=80

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

set wildmode=longest,list
set wildmenu

set winwidth=84
" We have to have a winheight bigger than we want to set winminheight. But if
" we set winheight to be huge before winminheight, the winminheight set will
" fail.
set winheight=5
set winminheight=5
set winheight=999

:set statusline=%<%f\ (%{&ft})\ %-4(%m%)%=%-19(%3l,%02c%03V%)
:hi User1 term=inverse,bold cterm=inverse,bold ctermfg=red

" Remove current dir from backup directory, to improve performance when
" editing a network file.
set backupdir-=.
set directory-=.

" CoffeeScript: indent with 2 spaces
au BufNewFile,BufReadPost *.coffee setl shiftwidth=2 tabstop=2 expandtab

