execute pathogen#infect()
syntax on
filetype plugin indent on
set number
set tabstop=4
set shiftwidth=4
set softtabstop=4
set smarttab
set expandtab
let g:flake8_ignore="E501,W293"
colorscheme railscasts

" Remember last cursor position
if has("autocmd")
      au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

set foldmethod=indent
set foldlevel=99
