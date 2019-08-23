
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

nnoremap <F2> :wa <CR>
vnoremap <F2> :wa <CR>

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

au BufRead,BufNewFile *.md setlocal textwidth=80
au VimEnter * ALEDisable
au VimLeave * silent !stty ixon


if exists("g:OpenNERDTree") 
  au VimEnter * NERDTree 
  au VimEnter * wincmd l 
endif

execute pathogen#infect()

let g:deoplete#enable_at_startup = 1

let g:ale_fixers = { 'javascript': ['eslint']}


