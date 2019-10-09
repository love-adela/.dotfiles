scriptencoding utf-8
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8,cp949,default,latin1
set shell=/bin/bash " http://stackoverflow.com/a/12231417
set noerrorbells visualbell t_vb = 

" Indentation
set cindent
set autoindent
set smartindent

" Tab
set softtabstop=2
set shiftwidth=2
set expandtab

" Searching
set incsearch
set ignorecase
set smartcase
set hlsearch | nohlsearch

" Line number column
set number
set cursorline

augroup setgroup
	autocmd!
	autocmd GUIEnter * set visualbell t_vb=
augroup END
set laststatus=2

call plug#begin('~/.vim/plugged')

" Themes
Plug 'vim-airline/vim-airline'
let g:airline_powerline_fonts = 1

Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'junegunn/rainbow_parentheses.vim'
Plug 'tpope/vim-sensible'
"Plug 'simnalamburt/vim-tiny-ime', { 'do' : './build' }
Plug 'simnalamburt/vim-mundo'

call plug#end()

" Easy file save without switching IME
cabbrev ㅈ w
cabbrev ㅂ q
cabbrev ㅈㅂ wq

" Easy command-line mode
nnoremap ; :

" Easy home/end
inoremap <C-a> <Esc>I
inoremap <C-e> <End>
nnoremap <C-a> ^
nnoremap <C-e> $
vnoremap <C-a> ^
vnoremap <C-e> $

" Easy delete key
vnoremap <backspace> "_d

" Easy indentation
vnoremap <Tab> >gv
vnoremap <S-Tab> <gv

" Easy splitting & resizing
nnoremap <silent> <C-_> :split<CR>
nnoremap <silent> <C-\> :vertical split<CR>
nnoremap <silent> <C-h> :vertical resize -5<CR>
nnoremap <silent> <C-j> :resize -3<CR>
nnoremap <silent> <C-k> :resize +3<CR>
nnoremap <silent> <C-l> :vertical resize +5<CR>
