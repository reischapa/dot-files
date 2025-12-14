
set rnu
set nu

set expandtab
set tabstop=2
set shiftwidth=2
set exrc
set secure

set smartindent
set visualbell

set termencoding=utf-8
set guifont=Monospace\ 14
set background=dark
set belloff=all
set clipboard=unnamedplus

set backup
set nowritebackup

set backupdir=~/.vim/tmp,.,

syntax on

nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk

nnoremap $ g$
vnoremap $ g$

nnoremap 0 g0
vnoremap 0 g0

nnoremap <Down> gj
nnoremap <Up> gk
vnoremap <Down> gj
vnoremap <Up> gk

nnoremap <C-q> :q! <CR> 
vnoremap <C-q> :q! <CR> 

map Q <Nop>

command W w
command Wa wa
command Q qa

silent !stty -ixon

