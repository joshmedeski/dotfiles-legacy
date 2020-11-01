set nocompatible
filetype indent plugin on
syntax on
let mapleader=" "
set updatetime=100
set cursorline
set hidden
set wildmenu
set showcmd
set hlsearch
set incsearch
set ignorecase
set smartcase
set backspace=indent,eol,start
set lazyredraw
set autoindent
set nostartofline
set ruler
set cmdheight=1
set laststatus=2
set confirm
set mouse=a
set number relativenumber
set hid
set notimeout ttimeout ttimeoutlen=200
set nowrap
set t_Co=256

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" Set to auto read when a file is changed from the outside
set autoread
au FocusGained,BufEnter * checktime

syntax enable
set background=dark
set encoding=utf8

" Turn backup off
set nobackup
set nowb
set noswapfile

set expandtab
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2

