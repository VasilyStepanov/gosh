syntax on
set autoindent
set tabstop=4
set expandtab
set shiftwidth=4
filetype indent on

autocmd BufRead *.ts set tabstop=2 shiftwidth=2 expandtab softtabstop=2
autocmd BufRead *.html set tabstop=2 shiftwidth=2 expandtab softtabstop=2

execute pathogen#infect()
syntax on
filetype plugin indent on

set wrap!

if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif
