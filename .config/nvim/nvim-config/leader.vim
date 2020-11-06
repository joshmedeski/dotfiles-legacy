let mapleader=" "

nmap <leader>% :source %<cr>
nmap <leader>' :Marks<cr>
nmap <leader>/ :Rg<cr>
nmap <leader>1 :source ~/.vimrc \| :PlugInstall<cr>
nmap <leader><return> :w!<cr>
nmap <leader><tab> :bp<cr>
nmap <leader>a :CocAction<cr>
nmap <leader>b :Buffers<cr>
nmap <leader>bb :Buffers<cr>
nmap <leader>bd :bd<cr>
nmap <leader>bn :bn<cr>
nmap <leader>bp :bp<cr>
nmap <leader>en <Plug>(coc-diagnostic-next)
nmap <leader>ep <Plug>(coc-diagnostic-prev)
nmap <leader>fs :w<cr>
nmap <leader>h :noh<cr>
nmap <leader>j :Files<cr>
nmap <leader>l :LF<cr>
nmap <leader>n :bn<cr>
nmap <leader>p :bp<cr>
nmap <leader>wc :wincmd c<cr>
nmap <leader>wf :MaximizerToggle!<cr>
nmap <leader>wh :wincmd h<cr>
nmap <leader>wj :wincmd j<cr>
nmap <leader>wk :wincmd k<cr>
nmap <leader>wl :wincmd l<cr>
nmap <leader>ws :wincmd s<cr>
nmap <leader>wv :wincmd v<cr>
nmap <leader>wx :wincmd x<cr>
