" cSpell:disable
call plug#begin()
  Plug 'arcticicestudio/nord-vim'
  Plug 'chrisbra/vim-autosave'
  Plug 'editorconfig/editorconfig-vim'
  Plug 'godlygeek/tabular'
  Plug 'jceb/vim-orgmode'
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  Plug 'kdheepak/lazygit.nvim'
  Plug 'liuchengxu/vim-clap', { 'do': ':Clap install-binary!' }
  Plug 'mattn/emmet-vim'
  Plug 'mhinz/vim-signify'
  Plug 'mhinz/vim-startify'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'nvim-treesitter/nvim-treesitter'
  Plug 'preservim/nerdtree'
  Plug 'sheerun/vim-polyglot'
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-surround'
  Plug 'vim-airline/vim-airline'
  Plug 'voldikss/fzf-floaterm'
  Plug 'voldikss/vim-floaterm'
  Plug 'wakatime/vim-wakatime'
  Plug 'wellle/context.vim'
call plug#end()
" cSpell:enable

command! LF FloatermNew lf

augroup nord-theme-overrides
  autocmd!
  autocmd ColorScheme nord highlight Comment ctermfg=13 " 13 = purple
  autocmd ColorScheme nord highlight Search ctermbg=3 " 3 = yellow
  autocmd ColorScheme nord highlight Visual ctermbg=3 ctermfg=0 " 3 = yellow, 0 = black
augroup END

" Thanks https://www.chrisatmachine.com/Neovim/17-snippets/
" Use <C-l> for trigger snippet expand.
imap <C-l> <Plug>(coc-snippets-expand)

" Use <C-j> for select text for visual placeholder of snippet.
vmap <C-j> <Plug>(coc-snippets-select)

" Use <C-j> for jump to next placeholder, it's default of coc.nvim
let g:coc_snippet_next = '<c-j>'

" Use <C-k> for jump to previous placeholder, it's default of coc.nvim
let g:coc_snippet_prev = '<c-k>'

" Use <C-j> for both expand and jump (make expand higher priority.)
imap <C-j> <Plug>(coc-snippets-expand-jump)

" disable vim-go :GoDef short cut (gd)
" this is handled by LanguageClient [LC]
let g:go_def_mapping_enabled = 0

" Highlight color
hi Visual term=reverse cterm=reverse guibg=Grey

" cSpell
set spellfile=~/.config/nvim/spell/en.utf-8.add

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
command! -nargs=0 Prettier :call CocAction('runCommand', 'prettier.formatFile')

" Remap for do codeAction of selected region
function! s:cocActionsOpenFromSelected(type) abort
  execute 'CocCommand actions.open ' . a:type
endfunction
xmap <silent> <leader>a :<C-u>execute 'CocCommand actions.open ' . visualmode()<CR>
nmap <silent> <leader>a :<C-u>set operatorfunc=<SID>cocActionsOpenFromSelected<CR>g@

nmap <leader>' :Marks<CR>
nmap <leader>/ :Rg<CR>
nmap <leader>; :History<CR>

nnoremap <silent><leader>1 :source ~/.vimrc \| :PlugInstall<CR>
nmap <leader>b :Buffers<CR>
nmap <leader>c "*y
nmap <leader>f :Files<CR>
nmap <leader>g :MagitOnly<CR>
nmap <leader>h :noh<CR>
nmap <leader>l :LF<CR>
nmap <leader>n :NERDTreeToggle<CR>
"nmap <leader>p :Prettier<CR>
nmap <leader>q :wq<CR>
nmap <leader>y "*y
nmap <leader><return> :w!<CR>

" cSpell:disable
nnoremap <Leader>p <cmd>lua require'telescope.builtin'.find_files{}<CR>
" cSpell:enable

nmap <leader>bb :Buffers<CR>
nmap <leader>bp :bp<CR>
nmap <leader>bd :bd<CR>
nmap <leader>bn :bn<CR>

nmap <leader>fs :w<CR>

nmap <leader>wc :wincmd c<CR>
nmap <leader>wh :wincmd h<CR>
nmap <leader>wj :wincmd j<CR>
nmap <leader>wk :wincmd k<CR>
nmap <leader>wl :wincmd l<CR>
nmap <leader>ws :wincmd s<CR>
nmap <leader>wv :wincmd v<CR>
nmap <leader>wx :wincmd x<CR>

nmap <leader>,a :edit ~/.alacritty.yml<CR>
nmap <leader>,f :edit ~/.config/fish/config.fish<CR>
nmap <leader>,s :edit ~/.skhdrc<CR>
nmap <leader>,t :edit ~/.tmux.conf<CR>
nmap <leader>,v :edit ~/.config/nvim/init.vim<CR>
nmap <leader>,y :edit ~/.yabairc<CR>
nmap <leader>% :source %<CR>

map Y y$

" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

