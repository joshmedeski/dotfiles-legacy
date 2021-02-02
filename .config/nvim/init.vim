call plug#begin()
source $HOME/.config/nvim/nvim-config/plugins.vim
call plug#end()

source $HOME/.config/nvim/nvim-config/autocmd.vim
source $HOME/.config/nvim/nvim-config/coc.vim
source $HOME/.config/nvim/nvim-config/general.vim
source $HOME/.config/nvim/nvim-config/theme.vim

let mapleader=" "
source $HOME/.config/nvim/nvim-config/leader.vim

" Miscellaneous
command! LF FloatermNew lf
let g:airline#extensions#tabline#enabled=1
let g:vim_markdown_folding_disabled = 1
let NERDTreeShowHidden=1

" Vim Wiki Setup
let g:vimwiki_list = [{'path': '~/repos/obsidian/',
                      \ 'syntax': 'markdown', 'ext': '.md'}]

" Write all buffers before navigating from Vim to tmux pane
let g:tmux_navigator_save_on_switch = 2
