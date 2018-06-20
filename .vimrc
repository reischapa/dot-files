set rnu
set nu

syntax  on
set expandtab
set tabstop=2
set shiftwidth=2
set exrc
set secure

set smartindent

set visualbell

execute pathogen#infect()

let g:deoplete#enable_at_startup = 1
if !exists('g:deoplete#omni#input_patterns')
  let g:deoplete#omni#input_patterns = {}
endif

" let g:deoplete#disable_auto_complete = 1
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif

" omnifuncs
augroup omnifuncs
  autocmd!
  autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
  autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
"  autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
  autocmd FileType javascript setlocal omnifunc=tern#Complete
  autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
  autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
augroup end


" tern
"if exists('g:plugs["tern_for_vim"]')
"    let g:tern_show_argument_hints = 'on_hold'
"    let g:tern_show_signature_in_pum = 1
"endif

" deoplete tab-complete
"inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

" tern
autocmd FileType javascript nnoremap <silent> <buffer> gb :TernDef<CR>

execute tern#Enable()

" ale
let g:ale_fixers = {
\   'javascript': ['eslint']
\}

" keyboard bindings

nnoremap <F2> :wa <CR>
vnoremap <F2> :wa <CR>

nnoremap <F3> :wa <CR> :! npm t \| less <CR>
vnoremap <F3> :wa <CR> :! npm t \| less <CR>

nnoremap <F4> :wa <CR> :! npm t <CR>
vnoremap <F4> :wa <CR> :! npm t <CR>

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
inoremap <Down> <C-o>gj
inoremap <Up> <C-o>gk

set termencoding=utf-8
set guifont=Monospace\ 14
set background=dark
set belloff=all

"autorun

autocmd VimEnter * ALEDisable
autocmd VimEnter * NERDTree 
autocmd VimEnter * wincmd l 

"ex commands

command W w
command Wa wa
command Q qa

