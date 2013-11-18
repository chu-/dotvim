set nocompatible               " be iMproved
set laststatus=2   " Always show the statusline
set encoding=utf-8 " Necessary to show Unicode glyphs
" space instead of tab
set ts=4
set expandtab
set autoindent

""
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:
"
Bundle 'Lokaltog/vim-powerline'
let g:Powerline_symbols='fancy'
" original repos on github
" ...
Bundle 'scrooloose/nerdtree'
Bundle 'chu-/ultisnips'
Bundle 'Lokaltog/vim-easymotion'
let g:EasyMotion_leader_key = 'z'
Bundle 'tpope/vim-fugitive'
Bundle 'kien/ctrlp.vim'
Bundle 'vim-scripts/EasyGrep'
Bundle 'JuliaLang/julia-vim'
Bundle 'terryma/vim-multiple-cursors'
Bundle 'Raimondi/delimitMate'
Bundle 'benmills/vimux'
Bundle 'scrooloose/syntastic'
Bundle 'ivanov/vim-ipython'

set guifont=Liberation\ Mono\ 10
filetype plugin indent on     " required!
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..


"for input ["i","love","you"] in autocomplete mode
imap <C-e> <Esc>ea
