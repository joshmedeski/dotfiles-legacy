" spellchecker: disable
call plug#begin()
  Plug 'airblade/vim-rooter'
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

