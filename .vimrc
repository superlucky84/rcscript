syntax on  

" for window
"set rtp+=C:\Users\jinwoo\vim\bundle\vundle
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
Plugin 'isRuslan/vim-es6'

filetype indent plugin on

"gvim
"set guioptions-=T    "툴바 숨기기

"linux
"colo black

"window
set guifont=monaco:h12
"set guifont=UbuntuMono\ 11
"set guifont=굴림체:h10

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
set ts=2
set sw=2
set sts=2
set et

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
"map <Leader>t <ESC>:FufFile **/<CR>
"map <Leader>ff <ESC>:FufFile<CR>
"map <Leader>f <ESC>:FufFile<CR>
"map <Leader>b <ESC>:FufBuffer<CR>


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
hi IndentGuidesEven guibg=white   ctermbg=3
let g:indent_guides_start_level=1
let g:indent_guides_guide_size=1
nmap <leader>g :IndentGuidesToggle<CR>


let @p='iecho "<pre>"; print_r(); echo "</pre>";bbbbbl'
let @c='iconsole.log();h'


"vim 6.*
"let g:treeExplWinSize=30
"let g:treeExplVertical = 1
"nmap <F11> :VSTreeExplore<CR>

"window
"nmap <leader>es :!.\node_modules\.bin\eslint %<CR>

"unix
nmap <leader>es :!./node_modules/.bin/eslint %<CR>
