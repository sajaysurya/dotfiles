set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'           "Package Manager
Plugin 'valloric/youcompleteme'         "auto complete
Plugin 'w0rp/ale'                       "Async Linting Engine
Plugin 'tpope/vim-fugitive'             "git management
Plugin 'tpope/vim-sensible'             "sensible settings
Plugin 'tpope/vim-surround'             "for surrounds - brackets, tags..
Plugin 'tmhedberg/SimpylFold'           "code folding - functions, classes
Plugin 'scrooloose/nerdtree'            "file explorer
Plugin 'Xuyuanp/nerdtree-git-plugin'    "git status in nerdtree
Plugin 'christoomey/vim-tmux-navigator' "seamless navigation between tmux and vim
Plugin 'flazz/vim-colorschemes'         "good collection of color schemes
Plugin 'vim-airline/vim-airline'        "better looking status bar
Plugin 'airblade/vim-gitgutter'         "shows per line changes in file

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" line numbering
set nu

" not to flod python docstring and import
let g:SimpylFold_fold_docstring	= 0
let g:SimpylFold_fold_import	= 0

" to use system clipboard
set clipboard=unnamedplus

" NERDtree shortcut
map <C-n> :NERDTreeToggle<CR>

" set color scheme
colorscheme github

" tab settings
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab

" get doc shortcut
nnoremap <Leader>d :YcmCompleter GetDoc <CR>
