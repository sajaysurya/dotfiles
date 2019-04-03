set nocompatible              "to use latest features
filetype off                  "required for vundle initialization

"set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"essential
Plugin 'VundleVim/Vundle.vim'           "Package Manager
Plugin 'tpope/vim-sensible'             "sensible settings
Plugin 'tpope/vim-fugitive'             "git management
Plugin 'valloric/youcompleteme'         "auto complete
Plugin 'w0rp/ale'                       "Async Linting Engine
"useful
Plugin 'vim-scripts/indentpython.vim'   "proper indentation python
Plugin 'jpalardy/vim-slime'             "slime for REPL
Plugin 'tpope/vim-unimpaired'           "good shortcuts
Plugin 'tmhedberg/SimpylFold'           "code folding - functions, classes
Plugin 'airblade/vim-gitgutter'         "shows per line changes in file
Plugin 'christoomey/vim-tmux-navigator' "seamless navigation between tmux and vim
"eyecandy
Plugin 'tadaa/vimade'                   "for fading inactive buffers
Plugin 'flazz/vim-colorschemes'         "good collection of color schemes
Plugin 'powerline/powerline', {'rtp': 'powerline/bindings/vim/'}
"misc
Plugin 'sajaysurya/vimyin'              "for learning mandarin

"all of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"basic vim settings
set nu  "line numbering
set encoding=utf-8
set clipboard=unnamedplus
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab
colorscheme github

" shortcuts
nnoremap <silent><Leader>d :YcmCompleter GetDoc <CR>
nnoremap <silent><Leader>g :YcmCompleter GotoDefinitionElseDeclaration <CR>

"set spell-check
autocmd BufRead,BufNewFile *.md setlocal spell
autocmd BufRead,BufNewFile *.tex setlocal spell
autocmd BufRead,BufNewFile *.rst setlocal spell

"not to fold python docstring and import
let g:SimpylFold_fold_docstring	= 0
let g:SimpylFold_fold_import	= 0

"make slime use tmux
let g:slime_target = "tmux"

"ALE error display format
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'

" force YCM to run Jedi using python in the default environment
let g:ycm_python_binary_path = 'python'
