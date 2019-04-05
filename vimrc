call pathogen#infect()
call pathogen#helptags()

set termguicolors
let &t_8f = "\<Esc>[38:2:%lu:%lu:%lum"
let &t_8b = "\<Esc>[48:2:%lu:%lu:%lum"

colorscheme solarized8
set background=dark

syntax enable
scriptencoding utf-8

let mapleader = "."
nnoremap <leader><leader> <leader>
nnoremap <leader>sv :source $MYVIMRC<cr>
nnoremap <leader>n :set number!<cr>
nnoremap <leader>r :set relativenumber!<cr>

" turn off auto adding comments on next line
" so you can cut and paste reliably
" http://vimdoc.sourceforge.net/htmldoc/change.html#fo-table
set fo=tcq

" set default comment color to cyan instead of darkblue
" which is not very legible on a black background
highlight comment ctermfg=cyan

set tabstop=2
set expandtab
set softtabstop=2
set shiftwidth=2

highlight LiteralTabs ctermbg=darkgreen guibg=darkgreen
match LiteralTabs /\s\	/
highlight ExtraWhitespace ctermbg=darkgreen guibg=darkgreen
match ExtraWhitespace /\s\+$/

" Show me a ruler
set ruler

set number

" Misc Stuff
filetype plugin indent on

au BufRead,BufNewFile *.pp set filetype=puppet
au BufRead,BufNewFile *.py set filetype=python
au BufRead,BufNewFile *.{yaml,yml} set filetype=yaml "foldmethod=indent
