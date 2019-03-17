set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'           "Package Manager
Plugin 'tpope/vim-sensible'             "sensible settings
Plugin 'valloric/youcompleteme'         "auto complete
Plugin 'w0rp/ale'                       "Async Linting Engine
Plugin 'tpope/vim-fugitive'             "git management
Plugin 'tpope/vim-unimpaired'           "good shortcuts
Plugin 'tpope/vim-surround'             "for surrounds - brackets, tags..
Plugin 'tmhedberg/SimpylFold'           "code folding - functions, classes
Plugin 'christoomey/vim-tmux-navigator' "seamless navigation between tmux and vim
Plugin 'flazz/vim-colorschemes'         "good collection of color schemes
Plugin 'powerline/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'airblade/vim-gitgutter'         "shows per line changes in file
Plugin 'lervag/vimtex'                  "minimal plugin for latex
Plugin 'rhysd/vim-grammarous'           "for checking grammar
Plugin 'jpalardy/vim-slime'             "slime for REPL
Plugin 'tadaa/vimade'                   "for fading inactive buffers
Plugin 'sajaysurya/vimyin'              "for learning mandarin

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

" set encoding
set encoding=utf-8

" set spell-check
autocmd BufRead,BufNewFile *.md setlocal spell
autocmd BufRead,BufNewFile *.tex setlocal spell
autocmd BufRead,BufNewFile *.rst setlocal spell

" not to flod python docstring and import
let g:SimpylFold_fold_docstring	= 0
let g:SimpylFold_fold_import	= 0

" LanguageTool executable for grammarous
let g:grammarous#languagetool_cmd = 'languagetool'

" make slime use tmux
let g:slime_target = "tmux"

" ALE error display format
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'

" to use system clipboard
set clipboard=unnamedplus

" set color scheme
colorscheme github

" tab settings
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab

" shortcuts
nnoremap <silent><Leader>d :YcmCompleter GetDoc <CR>

" force YCM to run Jedi using python in the default environment
let g:ycm_python_binary_path = 'python'

" to make vimtex play well with youcompleteme
if !exists('g:ycm_semantic_triggers')
    let g:ycm_semantic_triggers = {}
endif
    let g:ycm_semantic_triggers.tex = g:vimtex#re#youcompleteme

" Changing cursor shape per mode (for tmux)
" 1 or 0 -> blinking block
" 2 -> solid block
" 3 -> blinking underscore
" 4 -> solid underscore
if exists('$TMUX')
    " tmux will only forward escape sequences to the terminal if surrounded by a DCS sequence
    let &t_SI .= "\<Esc>Ptmux;\<Esc>\<Esc>[5 q\<Esc>\\"
    let &t_EI .= "\<Esc>Ptmux;\<Esc>\<Esc>[1 q\<Esc>\\"
    autocmd VimLeave * silent !echo -ne "\033Ptmux;\033\033[0 q\033\\"
else
    let &t_SI .= "\<Esc>[5 q"
    let &t_EI .= "\<Esc>[1 q"
    autocmd VimLeave * silent !echo -ne "\033[0 q"
endif
