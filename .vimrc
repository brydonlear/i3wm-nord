" Honski Desgin Vimrc
" ----------------------------- General Settings ----------------------

set nocompatible
" set visualbell

" Enable type file detection. Vim will be able to try to detect the type of file in use.
filetype on

" Enable plugins and load plugin for the detected file type.
filetype plugin on

" Load an indent file for the detected file type.
filetype indent on

" enable pattern highlighting, ignorecase, smartcase and incremental searching
set hlsearch
set ignorecase
set smartcase
set incsearch

" activate line numbers
set number
set relativenumber

" show commands and insert mode in status bar
set showcmd
set showmode

set nowrap

" set spaces and tabs
set tabstop=2
set shiftwidth=2
set expandtab
set smartindent
set smarttab

" enable syntax highlighting
syntax enable

" enough for line numbers + gutter within 80 standard
"set textwidth=72

" faster scrolling
set ttyfast

" better command-line completion
set wildmenu

" Highlight cursor line underneath the cursor horizontally.
set cursorline

" Highlight cursor line underneath the cursor vertically.
set cursorcolumn

autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS

" --------------------------- Plugins ---------------------------------

" plugin options
set t_Co=256
let g:python_highlight_all=1

" plugin manager
call plug#begin('~/.vim/plugged')

Plug 'sheerun/vim-polyglot'
Plug 'vim-python/python-syntax'
Plug 'gabrielelana/vim-markdown'
Plug 'arcticicestudio/nord-vim'
Plug 'preservim/nerdtree'
Plug 'ap/vim-css-color'

call plug#end()



" disable arrow keys (vi muscle memory)
" noremap <up> :echoerr "Umm, use k instead"<CR>
" noremap <down> :echoerr "Umm, use j instead"<CR>
" noremap <left> :echoerr "Umm, use h instead"<CR>
" noremap <right> :echoerr "Umm, use l instead"<CR>
" inoremap <up> <NOP>
" inoremap <down> <NOP>
" inoremap <left> <NOP>
" inoremap <right> <NOP>

" window resizing
noremap <C-h> <C-w>>
noremap <C-l> <C-w><
noremap <C-k> <C-w>+
noremap <C-j> <C-w>-

" set window split to right and below
set splitright splitbelow

" set colorscheme
colorscheme nord
