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

call plug#begin()
  Plug 'arcticicestudio/nord-vim'
  Plug 'chrisbra/vim-autosave'
  Plug 'dag/vim-fish'
  Plug 'digitaltoad/vim-pug'
  Plug 'editorconfig/editorconfig-vim'
  Plug 'godlygeek/tabular'
  Plug 'jceb/vim-orgmode'
  Plug 'jparise/vim-graphql'
  Plug 'jreybert/vimagit'
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  Plug 'leafgarland/typescript-vim'
  Plug 'maxmellon/vim-jsx-pretty'
  Plug 'mhinz/vim-signify'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'pangloss/vim-javascript'
  Plug 'plasticboy/vim-markdown'
  Plug 'preservim/nerdtree'
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-surround'
  Plug 'vim-airline/vim-airline'
  Plug 'wakatime/vim-wakatime'
call plug#end()

colorscheme nord

let NERDTreeShowHidden=1

let g:airline#extensions#tabline#enabled=1

let g:vim_markdown_folding_disabled = 1

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()

" Prettier
command! -nargs=0 Prettier :CocCommand prettier.formatFile

nmap <leader>' :Marks<cr>
nmap <leader>/ :Rg<cr>
nmap <leader>; :History<cr>

nmap <leader>a :CocAction<cr>
nmap <leader>b :Buffers<cr>
nmap <leader>c "*y
nmap <leader>f :GitFiles<cr>
nmap <leader>g :MagitOnly<cr>
nmap <leader>n :NERDTreeToggle<cr>
nmap <leader>p :Prettier<cr>
nmap <leader>q :wq<cr>
nmap <leader><return> :w!<cr>

nmap <leader>bb :Buffers<cr>
nmap <leader>bp :bp<cr>
nmap <leader>bd :bd<cr>
nmap <leader>bn :bn<cr>

nmap <leader>wc :wincmd c<CR>
nmap <leader>wh :wincmd h<CR>
nmap <leader>wj :wincmd j<CR>
nmap <leader>wk :wincmd k<CR>
nmap <leader>wl :wincmd l<CR>
nmap <leader>ws :wincmd s<CR>
nmap <leader>wv :wincmd v<CR>
nmap <leader>ww :w<CR>
nmap <leader>wx :wincmd x<CR>

nmap <leader>.a :edit ~/.alacritty.yml<cr>
nmap <leader>.f :edit ~/.config/fish/config.fish<cr>
nmap <leader>.s :edit ~/.skhdrc<cr>
nmap <leader>.t :edit ~/.tmux.conf<cr>
nmap <leader>.v :edit ~/.vimrc<cr>
nmap <leader>.y :edit ~/.yabairc<cr>
nmap <leader>% :source %<cr>

map Y y$

" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

