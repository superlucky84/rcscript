syntax on  

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'
Bundle 'The-NERD-tree'
Bundle 'The-NERD-Commenter'
Bundle 'surround.vim'
Bundle 'AutoComplPop'
Plugin 'Command-T'
Plugin 'Align'
Plugin 'EasyMotion'
Plugin 'jellybeans.vim'
Plugin 'snipMate'

filetype indent plugin on

"gvim
"set guioptions-=T    "툴바 숨기기

"linux
"colo black

"window
set guifont=monaco:h14
colo jellybeans
"colo dusk
"colo chocolateliquor
"colo golden
"colo rdark
"colo camo
"colo dante

"set lines=30
"set columns=100

set nocp
set nobk
set nu
set vb
set hls 
set ic
set smartcase
set ai
set si
set ts=4
set sw=4
set sts=4
"set et

set ruler
set showcmd 
set showmatch
set showmode

set bs=indent,eol,start
set sol 
set ch=1
set km=startsel,stopsel
set sel=exclusive
set scs 
set hi=1000 
set nows
set sm
set scrolloff=2
set cul

"linux
"set enc=utf8

set fencs=utf8,cp949

set exrc
set mousehide
set foldmethod=manual

set magic
set report=0
set autoread
set ffs=unix,dos,mac

nmap <leader>acr :AlignCtrl r<CR>
nmap <leader>acl :AlignCtrl l<CR>

"vim 7.*
nmap <leader>r :NERDTreeToggle<CR>
map <F10> :set tags=/usr/local/plug/trunk/tags<CR>

nmap <leader>cp :set paste<CR>
nmap <leader>np :set nopaste<CR>

let @p='iecho "<pre>"; print_r(); echo "</pre>";bbbbbl'


"vim 6.*
"let g:treeExplWinSize=30
"let g:treeExplVertical = 1
"nmap <F11> :VSTreeExplore<CR>


