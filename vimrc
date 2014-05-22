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

" Set ros launchfiles to xml syntax highlighting
au BufNewFile,BufRead *.launch set filetype=xml

set foldmethod=indent
set foldlevel=99

" Activate mouse mode
set mouse=a

" Set Leader
let mapleader = ","

" Set copy and paste to a local buffer
" vmap <C-c> :w! ~/.vbuf<CR>
" nmap <C-c> :.w! ~/.vbuf<CR>
" nmap <C-v> :r ~/.vbuf<CR>

" Save with ctrl s
nmap <C-s> <esc>:w<CR>
vmap <C-s> <esc>:w<CR>
imap <C-s> <esc>:w<CR>
nmap <C-c> :q
imap <C-c> <esc>
vmap <C-c> <esc>
map <F8> <ESC>:w !python<Enter>

" Shortcuts for leader
map <Leader>m <esc>:tabnext<CR>
map <Leader>o <esc>:NERDTree<CR>
map <Leader>c <esc>:CtrlP<CR>
map <Leader>f <esc>:call Flake8()<CR>

" Add branch to statusline
set statusline+=%{fugitive#statusline()}

" Set tab width for c++ to 2
autocmd FileType cpp setlocal shiftwidth=2 tabstop=2
