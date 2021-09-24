""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" BASIC EDITING CONFIGURATION
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible
set history=10000


#set expandtab "convert tabs to spaces
set tabstop=4
set shiftwidth=4
set softtabstop=4
set autoindent
set laststatus=2
set showmatch
set incsearch
set hlsearch

" make searches case-sensitive only if they contain upper-case characters
set ignorecase smartcase

" highlight current line
"set cursorline
set cmdheight=1

" display incomplete commands
set showcmd

syntax on
" Enable file type detection.
" Use the default filetype settings, so that mail gets 'tw' set to 72,
" 'cindent' is on in C files, etc.
" Also load indent files, to automatically do language-dependent indenting.
filetype plugin indent on

" make tab completion for files/buffers act like bash
set wildmenu

set foldmethod=manual
set nofoldenable

let g:airline_powerline_fonts = 1
let g:airline_theme='cobalt2'
