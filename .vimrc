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
Plugin 'Indent-Guides'

filetype indent plugin on

"gvim
"set guioptions-=T    "툴바 숨기기

"linux
"colo black

"window
set guifont=monaco:h12
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

nmap <leader>ct2 :set ts=2 sw=2 sts=2<CR>
nmap <leader>ct4 :set ts=4 sw=4 sts=4<CR>

nmap <leader>et4 :%s/\t/    /g<CR>
nmap <leader>et2 :%s/\t/  /g<CR>
nmap <leader>etr4 :%s/    /\t/g<CR>
nmap <leader>etr2 :%s/  /\t/g<CR>


"indentguide
hi IndentGuidesOdd  guibg=darkgrey   ctermbg=3
hi IndentGuidesEven guibg=darkgrey   ctermbg=3
let g:indent_guides_start_level=1
let g:indent_guides_guide_size=1



let @p='iecho "<pre>"; print_r(); echo "</pre>";bbbbbl'
let @c='iconsole.log();h'


"vim 6.*
"let g:treeExplWinSize=30
"let g:treeExplVertical = 1
"nmap <F11> :VSTreeExplore<CR>


