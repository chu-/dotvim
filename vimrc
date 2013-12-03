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
Bundle 'majutsushi/tagbar'
Bundle 'tpope/vim-speeddating'
Bundle 'tpope/vim-repeat'


" source explorer package Taglist+Nerd_tree+srcexplor
Bundle 'wesleyche/Trinity'
Bundle 'scrooloose/nerdtree'
Bundle 'chu-/taglist.vim'
Bundle 'wesleyche/SrcExpl'
"add julia support for ctags
"set tags+=~/julia/contrib/ctags
" shortcut for trinity
" // The switch of the Source Explorer 
nmap <F8> :SrcExplToggle<CR> 

" // Set the height of Source Explorer window 
let g:SrcExpl_winHeight = 8 

" // Set 100 ms for refreshing the Source Explorer 
let g:SrcExpl_refreshTime = 100 

" // Set "Enter" key to jump into the exact definition context 
let g:SrcExpl_jumpKey = "<ENTER>" 

" // Set "Space" key for back from the definition context 
let g:SrcExpl_gobackKey = "<SPACE>" 

" // In order to avoid conflicts, the Source Explorer should know what
" plugins
" // except itself are using buffers. And you need add their buffer names
" into
" // below listaccording to the command ":buffers!"
let g:SrcExpl_pluginList = [ 
        \ "__Tag_List__", 
        \ "_NERD_tree_" 
    \ ] 

" // Enable/Disable the local definition searching, and note that this is not 
" // guaranteed to work, the Source Explorer doesn't check the syntax for now. 
" // It only searches for a match with the keyword according to command 'gd' 
let g:SrcExpl_searchLocalDef = 1 

" // Do not let the Source Explorer update the tags file when opening 
let g:SrcExpl_isUpdateTags = 0 

" // Use 'Exuberant Ctags' with '--sort=foldcase -R .' or '-L cscope.files' to 
" // create/update the tags file 
let g:SrcExpl_updateTagsCmd = "ctags --sort=foldcase -R ." 

" // Set "<F12>" key for updating the tags file artificially 
let g:SrcExpl_updateTagsKey = "<F12>" 

" // Set "<F3>" key for displaying the previous definition in the jump list 
let g:SrcExpl_prevDefKey = "<F3>" 

" // Set "<F4>" key for displaying the next definition in the jump list 
let g:SrcExpl_nextDefKey = "<F4>"
nmap <F8> :TrinityToggleAll<CR>
nmap <F9> :TrinityToggleSourceExplorer<CR>
nmap <F10> :TrinityToggleTagList<CR>
nmap <F11> :TrinityToggleNERDTree<CR>
nmap <F12> :Tagbar<CR>




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
