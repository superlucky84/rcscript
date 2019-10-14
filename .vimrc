syntax on

" for window
"curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
"    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'ddollar/nerdcommenter'
Plug 'tpope/vim-surround'
Plug 'kien/ctrlp.vim'
Plug 'pangloss/vim-javascript'
Plug 'easymotion/vim-easymotion'
Plug 'nanotech/jellybeans.vim'
Plug 'vim-scripts/grep.vim'
Plug 'tpope/vim-fugitive'
Plug 'yggdroot/indentline'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'schickling/vim-bufonly'
Plug 'prettier/vim-prettier'
Plug 'leafgarland/typescript-vim'
Plug 'posva/vim-vue'
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}

"Plugin 'scrooloose/syntastic'
"Plugin 'Quramy/tsuquyomi'
"Plugin 'sekel/vim-vue-syntastic'
"Plugin 'Quramy/tsuquyomi-vue'

"Plugin 'dense-analysis/ale'
call plug#end()

filetype indent plugin on

autocmd BufRead,BufNewFile *.vue setl filetype=vue
autocmd BufRead,BufNewFile *.vue call CocAction('reloadExtension', 'coc-vetur')

autocmd CursorHold * silent call CocActionAsync('highlight')
augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end
"autocmd FileType vue setlocal ts=2 sts=2 sw=2

let g:ctrlp_custom_ignore = {
  \ 'dir':  'node_modules$\|dist$\|\.git$\|\.hg$\|\.svn$\|\.yardoc$',
  \ 'file': '\.exe$\|\.so$\|\.dat$'
  \ }

" save change
"let g:prettier#autoformat = 0
"autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue PrettierAsync

"let g:typescript_indent_disable = 1
"let g:typescript_compiler_binary = 'tsc'
"let g:typescript_compiler_options = ''
"
"
"let g:ale_set_highlights = 0
"let g:ale_completion_enabled = 1
"let g:ale_completion_tsserver_autoimport = 1
"let g:ale_linter_aliases = {'vue': ['vue', 'javascript']}
"let g:ale_linters = { 'javascript': ['eslint'], 'typescript': ['tsserver', 'eslint'], 'vue': ['eslint'] }
"
"
"" air-line
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline_theme='dracula'

"gvim
"set guioptions-=T    "툴바 숨기기

"linux
"colo black

let g:indentLine_enabled = 0
let g:indentLine_setColors = 0
" Vim
let g:indentLine_color_term = 239
" GVim
let g:indentLine_color_gui = '#A4E57E'
" none X terminal
let g:indentLine_color_tty_light = 7 " (default: 4)
let g:indentLine_color_dark = 1 " (default: 2)
" Background (Vim, GVim)
let g:indentLine_bgcolor_term = 202
let g:indentLine_bgcolor_gui = '#FF5F00'

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
set clipboard=unnamed

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

nmap <leader>pp :PrettierAsync<CR>

nmap <leader>ee :call CocAction('reloadExtension', 'coc-vetur')<CR>
"nmap <leader>ee :ALEToggle<CR>
"nmap <leader>ed :ALEDetail<CR>
"nmap <leader>en :ALENext<CR>
"nmap <leader>ep :ALEPrevious<CR>
"nmap <leader>ee :SyntasticToggleMode<CR>
"nmap <leader>el :Errors<CR>
"nmap <leader>eo :TsuOpen<CR>
"nmap <leader>ec :TsuClose<CR>

nmap <leader>ss :Grep -R<CR>
nmap <leader>dc: CtrlPClearCache<CR>

"indentguide
nmap <leader>g :IndentLinesToggle<CR>


"nmap <leader>es :!./node_modules/.bin/eslint %<CR>

