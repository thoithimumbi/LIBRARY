" Enable nocompatible
set nocompatible

" Enable syntax
syntax on

" Enable line numbers
set number
set relativenumber

"Highlight Current Line
set cursorline
highlight CursorLine cterm=bold ctermbg=black
set guicursor=n-v-c-i:block

" Enable Word-Wrap
set wrap

"Spacing
filetype plugin indent on
set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=4
set smartindent
set backspace=indent,eol,start

" Show matching pairs of [] {} ()
set showmatch
