call plug#begin(stdpath('data') . '/plugged')

Plug 'tpope/vim-sensible'                    "sensible settings
Plug 'tpope/vim-unimpaired'                  "good shortcuts
Plug 'tpope/vim-fugitive'                    "for version control
Plug 'itchyny/lightline.vim'                 "status line
Plug 'mechatroner/rainbow_csv'               "for handling csv files
Plug 'christoomey/vim-tmux-navigator'        "for navigating inside tmux
Plug 'sajaysurya/onehalf', {'rtp': 'vim/'}   "color scheme

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
