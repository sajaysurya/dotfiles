call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-sensible'                    "sensible settings
Plug 'tpope/vim-unimpaired'                  "good shortcuts
Plug 'tpope/vim-fugitive'                    "for version control
Plug 'tpope/vim-unimpaired'                  "good shortcuts
Plug 'itchyny/lightline.vim'                 "status line
Plug 'mechatroner/rainbow_csv'               "for handling csv files
Plug 'christoomey/vim-tmux-navigator'        "for navigating inside tmux
Plug 'sajaysurya/onehalf', {'rtp': 'vim/'}   "color scheme
"temp additions - replace with better alternatives
Plug 'w0rp/ale'                              "Async Linting Engine
Plug 'jpalardy/vim-slime'                    "slime for REPL
Plug 'tmhedberg/SimpylFold'                  "code folding - functions, classes
Plug 'Vimjas/vim-python-pep8-indent'         "proper python indentation

call plug#end()

"basic vim settings
set nu  "line numbering
set encoding=utf-8
set clipboard=unnamedplus
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab

"color schemes
set t_Co=256
if exists('+termguicolors')
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
    set termguicolors
endif
silent! colorscheme onehalfdark
let g:lightline = {'colorscheme': 'one'}

"set spell-check
autocmd BufRead,BufNewFile *.md setlocal spell
autocmd BufRead,BufNewFile *.tex setlocal spell
autocmd BufRead,BufNewFile *.rst setlocal spell

"not to fold python docstring and import
let g:SimpylFold_fold_docstring	= 0
let g:SimpylFold_fold_import	= 0

"make slime use tmux
let g:slime_target = "tmux"
let g:slime_python_ipython = 1

"ALE error display format
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
