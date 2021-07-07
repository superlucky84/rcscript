" vim-plug auto setup
" NEO VIM
"let plugpath = expand('<sfile>:p:h'). '/autoload/plug.vim' 
" VIM8
let plugpath = expand('<sfile>:p:h'). '/.vim/autoload/plug.vim'
if !filereadable(plugpath)
    if executable('curl')
        let plugurl = 'https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
        call system('curl -fLo ' . shellescape(plugpath) . ' --create-dirs ' . plugurl)
        if v:shell_error
            echom "Error downloading vim-plug. Please install it manually.\n"
            exit
        endif
    else
        echom "vim-plug not installed. Please install it manually or install curl.\n"
        exit
    endif
endif

"call plug#begin('~/.config/nvim/plugged')
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
Plug 'shime/vim-livedown'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'mhinz/vim-startify'
Plug 'schickling/vim-bufonly'
Plug 'prettier/vim-prettier'
Plug 'leafgarland/typescript-vim'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'posva/vim-vue'
Plug 'ryanoasis/vim-devicons'
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
"Plugin 'scrooloose/syntastic'
"Plugin 'sekel/vim-vue-syntastic'
"Plugin 'Quramy/tsuquyomi'
"Plugin 'Quramy/tsuquyomi-vue'
"Plugin 'dense-analysis/ale'
call plug#end()

filetype indent plugin on
syntax on

"autocmd FileType vue setlocal ts=2 sts=2 sw=2
"autocmd BufRead,BufNewFile *.vue setl filetype=vue
"autocmd BufRead,BufNewFile *.vue call CocAction('reloadExtension', 'coc-vetur')
"autocmd VimEnter *
"                \   if !argc()
"                \ |   Startify
"                \ |   NERDTree
"                \ |   wincmd w
"                \ | endif

let g:startify_custom_header = [
      \'       _                         _     _   ',
      \'      |_|___ _ _ ___ ___ ___ ___|_|___| |_ ,',
      \'      | | .`| | | .`|_ -|  _|  _| | . |  _|',
      \'     _| |__,|\_/|__,|___|___|_| |_|  _|_|  ',
      \'    |___|                         |_|      '
      \]

let g:ctrlp_custom_ignore = {
  \ 'dir':  'node_modules$\|dist$\|\.git$\|\.hg$\|\.svn$\|\.yardoc$',
  \ 'file': '\.exe$\|\.so$\|\.dat$'
  \ }

let g:ctrlp_cmd='CtrlP :pwd'

let g:coc_global_extensions = [
            \ "coc-eslint",
            \ "coc-stylelint",
            \ "coc-stylelintplus",
            \ "coc-tsserver",
            \ "coc-vetur",
            \ "coc-explorer",
            \ "coc-html",
            \ "coc-json",
            \ "coc-css"
            \]



" PRETTER Save change
"let g:prettier#autoformat = 0
"autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue PrettierAsync

" ALE Config <-> coc.vim instead
"let g:ale_set_highlights = 0
"let g:ale_completion_enabled = 1
"let g:ale_completion_tsserver_autoimport = 1
"let g:ale_linter_aliases = {'vue': ['vue', 'javascript']}
"let g:ale_linters = { 'javascript': ['eslint'], 'typescript': ['tsserver', 'eslint'], 'vue': ['eslint'] }


" AIR-LINE
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline_theme = 'dracula'

" GVIM AT
"set guioptions-=T    "툴바 숨기기

" INDENT GUIDE LINE
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

let s:hidden_all = 1
function! ToggleBufferLine()
  if s:hidden_all == 1
    let s:hidden_all = 0
    set showtabline=0
  else
    let s:hidden_all = 1
    set showtabline=2
  endif
endfunction



" VIM-DEVICONS
let g:webdevicons_enable = 1
let g:webdevicons_enable_nerdtree = 1
let g:webdevicons_enable_unite = 1
let g:webdevicons_enable_vimfiler = 1
let g:webdevicons_enable_airline_tabline = 1
let g:webdevicons_enable_airline_statusline = 1
let g:webdevicons_enable_ctrlp = 1
let g:webdevicons_enable_flagship_statusline = 1
let g:WebDevIconsUnicodeDecorateFileNodes = 1
let g:WebDevIconsUnicodeGlyphDoubleWidth = 1
let g:webdevicons_conceal_nerdtree_brackets = 1
let g:WebDevIconsNerdTreeAfterGlyphPadding = '  '
let g:WebDevIconsNerdTreeGitPluginForceVAlign = 1
let g:webdevicons_enable_denite = 1
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:DevIconsEnableFoldersOpenClose = 1
let g:DevIconsEnableFolderPatternMatching = 1
let g:DevIconsEnableFolderExtensionPatternMatching = 1
let WebDevIconsUnicodeDecorateFolderNodesExactMatches = 1

" NERDTREE
let NERDTreeShowBookmarks=1
let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 1
"let g:NERDTreeWinPos = 'rightbelow'
let g:NERDTreeIgnore = ['^\.DS_Store$', '^tags$', '\.git$[[dir]]', '\.idea$[[dir]]', '\.sass-cache$']
let g:NERDTreeStatusline = ''



colo jellybeans

set guifont=monaco:h12
"set guifont=UbuntuMono\ 11
"set guifont=굴림체:h10
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

nmap <leader>ct2 :set ts=2 sw=2 sts=2<CR>
nmap <leader>ct4 :set ts=4 sw=4 sts=4<CR>
nmap <leader>r :NERDTreeToggle<CR>
nmap <leader>t :CocCommand explorer<CR>
nmap <leader>pp :PrettierAsync<CR>
nmap <leader>af :CocCommand eslint.executeAutofix<CR>
nmap <leader>ee :call CocAction('reloadExtension', 'coc-vetur')<CR>
nmap <leader>jj :call CocAction('jumpDefinition')<CR>
nmap <leader>ss :Grep -R --exclude-dir=node_modules<CR>
nmap <leader>dc :CtrlPClearCache<CR>
nmap <leader>g :IndentLinesToggle<CR>
nmap <leader>ld :LivedownToggle<CR>
nmap <leader>b :call ToggleBufferLine()<CR>


"nmap <leader>ee :ALEToggle<CR>
"nmap <leader>ed :ALEDetail<CR>
"nmap <leader>en :ALENext<CR>
"nmap <leader>ep :ALEPrevious<CR>
"nmap <leader>ee :SyntasticToggleMode<CR>
"nmap <leader>el :Errors<CR>
"nmap <leader>eo :TsuOpen<CR>
"nmap <leader>ec :TsuClose<CR>

" ITERM FONT INSTALL
" brew tap homebrew/cask-fonts
" brew cask install font-hack-nerd-font
" Non-ASC2 FONT 13pt Hack Regular Nerd Font Complete
" npm install -g livedown

"{
"  "suggest.maxCompleteItemCount": 20,
"  "diagnostic.infoSign": "ღ",
"  "diagnostic.hintSign": "ஐ",
"  "diagnostic.warningSign": "⚠",
"  "diagnostic.errorSign": "✖",
"  "diagnostic.signOffset": 9999999,
"  "diagnostic.highlightOffset": 9999999
"}
