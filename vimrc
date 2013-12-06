set nocompatible               " be iMproved
set laststatus=2   " Always show the statusline
set encoding=utf-8 " Necessary to show Unicode glyphs
" space instead of tab
set ts=4
set expandtab
set autoindent
" search with ignore case as default
" 'set noic' to case sensitive
set ic
" show charactor TAB in vim 
set list
set listchars=tab:~\ 
""
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle
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
Bundle 'chu-/ultisnips'
Bundle 'Lokaltog/vim-easymotion'
let g:EasyMotion_leader_key = 'z'
Bundle 'tpope/vim-fugitive'
Bundle 'kien/ctrlp.vim'
" '\' is the default <leader> for EasyGrep 
Bundle 'vim-scripts/EasyGrep'
Bundle 'JuliaLang/julia-vim'
Bundle 'terryma/vim-multiple-cursors'
Bundle 'Raimondi/delimitMate'
Bundle 'benmills/vimux'
Bundle 'scrooloose/syntastic'
Bundle 'ivanov/vim-ipython'
" org-mode support for vim
let maplocalleader=','
Bundle 'jceb/vim-orgmode'
Bundle 'chu-/utl.vim'
Bundle 'mattn/calendar-vim'
let g:tagbar_left = 1
let g:tagbar_width = 40
let g:tagbar_singleclick = 1
let g:tagbar_show_linenumbers = 1
Bundle 'chu-/tagbar'
Bundle 'tpope/vim-speeddating'
Bundle 'tpope/vim-repeat'
" Text graph drawing
Bundle 'vim-scripts/DrawIt'

" source explorer package Taglist+Nerd_tree+srcexplor
Bundle 'chu-/Trinity'
Bundle 'scrooloose/nerdtree'
Bundle 'chu-/taglist.vim'
Bundle 'wesleyche/SrcExpl'
"add julia support for ctags
"set tags+=~/julia/contrib/ctags
" shortcut for trinity
" // The switch of the Source Explorer 
"nmap <F8> :SrcExplToggle<CR> 
    let g:NERDTreeWinSize = 23
    " Set the window position
    let g:NERDTreeWinPos = "right"
    " Auto centre
    let g:NERDTreeAutoCenter = 0
    " Not Highlight the cursor line
    let g:NERDTreeHighlightCursorline = 0

nmap <F8> :TrinityToggleAll<CR>
nmap <F9> :TrinityToggleSourceExplorer<CR>
nmap <F10> :TrinityToggleTagbar<CR>
nmap <F11> :TrinityToggleNERDTree<CR>


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
imap <C-e> <Esc>l%%a
"quick exit
nmap q :q<CR> 
nmap Q :q!<CR> 
"jump to tag
nmap <CR> g]
"jump to different windows
nmap <C-h> <C-W>h
nmap <C-j> <C-W>j
nmap <C-k> <C-W>k 
nmap <C-l> <C-W>l
