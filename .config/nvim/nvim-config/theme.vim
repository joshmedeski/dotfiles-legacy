syntax enable
set background=dark

colorscheme nord

augroup nord-themeoverrides
  autocmd!
  autocmd ColorScheme nord highlight Comment ctermfg=13 " 13 = purple
  autocmd ColorScheme nord highlight Search ctermbg=3 " 3 = yellow
  autocmd ColorScheme nord highlight Visual ctermbg=3 ctermfg=0 " 3 = yellow, 0 = black
augroup END

highlight Visual term=reverse cterm=reverse guibg=Grey
highlight CocInfoSign ctermfg=Yellow guifg=#fab005

