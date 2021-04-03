set nocompatible              "to use latest features
filetype off                  "required for vundle initialization

"set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"essential
Plugin 'VundleVim/Vundle.vim'           "Package Manager
Plugin 'tpope/vim-sensible'             "sensible settings
"useful
Plugin 'tpope/vim-unimpaired'           "good shortcuts
Plugin 'itchyny/lightline.vim'          "status line
Plugin 'mechatroner/rainbow_csv'        "for handling csv files
Plugin 'christoomey/vim-tmux-navigator' "for navigating inside tmux

"all of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"basic vim settings
set nu  "line numbering
set encoding=utf-8
set clipboard=unnamedplus
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab
