call pathogen#infect()
call pathogen#helptags()

colorscheme solarized
set background=dark
let g:lightline = { 'colorscheme': 'lightline_solarized' }

syntax enable
scriptencoding utf-8

let mapleader = ","
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

" Some default tab options that make sense for general files
set tabstop=2
set expandtab
set softtabstop=2
set shiftwidth=2

" Show trailing tabs and spaces
highlight LiteralTabs ctermbg=darkgreen guibg=darkgreen
match LiteralTabs /\s\	/
highlight ExtraWhitespace ctermbg=darkgreen guibg=darkgreen
match ExtraWhitespace /\s\+$/

set ruler
set number
set hidden
set hidden
set laststatus=2

" Misc Stuff
filetype plugin indent on
