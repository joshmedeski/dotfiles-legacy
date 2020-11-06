call plug#begin()
source $HOME/.config/nvim/nvim-config/plugins.vim
call plug#end()

source $HOME/.config/nvim/nvim-config/coc.vim
source $HOME/.config/nvim/nvim-config/general.vim
source $HOME/.config/nvim/nvim-config/leader.vim
source $HOME/.config/nvim/nvim-config/theme.vim

" Miscellaneous
command! LF FloatermNew lf
let g:airline#extensions#tabline#enabled=1
let g:vim_markdown_folding_disabled = 1
let NERDTreeShowHidden=1
