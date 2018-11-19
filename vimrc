call plug#begin('~/.vim/plugged')
" Make sure to use single quotes
Plug 'altercation/vim-colors-solarized'
Plug 'ntpeters/vim-better-whitespace'
Plug 'editorconfig/editorconfig-vim'
Plug 'wincent/command-t'
Plug 'iloginow/vim-stylus'
Plug 'mustache/vim-mustache-handlebars'
call plug#end()

set nocompatible

let mapleader=","

" %% will insert the current file's directory
cnoremap %% <C-R>=expand('%:h').'/'<cr>

" ,, will switch between two files
nnoremap <leader><leader> <c-^>

" ,l will toggle `set list` (show invisibles)
nmap <leader>l :set list!<cr>

" Left/right arrow keys will move lines or selections around (in normal and
" visual modes). This tip was found at:
" http://codingfearlessly.com/2012/08/21/vim-putting-arrows-to-use/
nmap <Left> <<
nmap <Right> >>
vmap <Left> <gv
vmap <Right> >gv

" Up/down arrow keys move among visible lines instead of actual lines. Found
" in a comment in Hacker News.
nmap <silent> <Up> gk
nmap <silent> <Down> gj
imap <silent> <Up> <C-o>gk
imap <silent> <Down> <C-o>gj

" Use better symbols for tabstops and EOLs
" Commented because the triangle char does not work on all systems.
"set listchars=tab:▸\ ,eol:¬

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
if exists("&colorcolumn")
set colorcolumn=80,120
endif

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
au BufNewFile,BufReadPost {*.coffee,Cakefile} setl shiftwidth=2 tabstop=2 expandtab

" thpl: act as perl
au BufNewFile,BufReadPost *.thpl set filetype=perl

" Command-T options
let g:CommandTMaxFiles=40000
let g:CommandTMaxDepth=20
let g:CommandTMaxCachedDirectories=5
set wildignore+=.git,node_modules

":ScratchBuffer makes current buffer disposable
command! ScratchBuffer setlocal buftype=nofile bufhidden=hide noswapfile

