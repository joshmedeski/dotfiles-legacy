syntax enable
set background=dark
colorscheme nord

augroup nord-themeoverrides
  autocmd!
  autocmd ColorScheme nord highlight vimCommentTitle term=Black ctermfg=0 guifg=#8FBCBB
  autocmd ColorScheme nord highlight Comment ctermfg=0
  autocmd ColorScheme nord highlight Number ctermfg=0
  autocmd ColorScheme nord highlight Search ctermbg=3 " 3 = yellow
"  autocmd ColorScheme nord highlight Visual ctermbg=reverse ctermfg=0 " 3 = yellow, 0 = black
"  autocmd ColorScheme nord highlight vimCommentTitle ctermfg=14 guifg=#8FBCBB
augroup END

highlight Visual term=reverse cterm=reverse guibg=black
highlight CocInfoSign ctermfg=Yellow
hi Comment ctermfg=Gray
highlight LineNr ctermfg=Gray
