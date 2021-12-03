call plug#begin(stdpath('data') . '/plugged')

Plug 'wincent/vim-clipper'                   "clipboard
Plug 'tpope/vim-sensible'                    "sensible settings
Plug 'tpope/vim-unimpaired'                  "good shortcuts
" Python
Plug 'Vimjas/vim-python-pep8-indent'         "proper python indentation

call plug#end()

"basic vim settings
set nu  "line numbering
set encoding=utf-8
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab

"set spell-check
autocmd BufRead,BufNewFile *.md setlocal spell
autocmd BufRead,BufNewFile *.tex setlocal spell
autocmd BufRead,BufNewFile *.rst setlocal spell
