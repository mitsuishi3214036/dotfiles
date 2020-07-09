"----------------------------------------------------------
" basic
"----------------------------------------------------------
set encoding=utf-8
scriptencoding utf-8
set fileencoding=utf-8
set fileencodings=ucs-boms,utf-8,euc-jp,cp93
set ambiwidth=double

set nocompatible

"----------------------------------------------------------
" view
"----------------------------------------------------------
set title
set number
set laststatus=2
set showmode
set showcmd
set ruler
set showmatch
syntax enable

set expandtab
set tabstop=4
set softtabstop=4
set autoindent
set smartindent
set shiftwidth=4

colorscheme iceberg

"----------------------------------------------------------
" edit
"----------------------------------------------------------
set wildmenu
set history=500

if has('mouse')
    set mouse=a
    if has('mouse_sgr')
        set ttymouse=sgr
    elseif v:version > 703 || v:version is 703 && has('patch632')
        set ttymouse=sgr
    else
        set ttymouse=xterm2
    endif
endif

set whichwrap=b,s,h,l,<,>,[,],~
nnoremap j gj
nnoremap k gk
nnoremap <down> gj
nnoremap <up> gk
set backspace=indent,eol,start

set clipboard+=unnamed
if &term =~ "xterm"
    let &t_SI .= "\e[?2004h"
    let &t_EI .= "\e[?2004l"
    let &pastetoggle = "\e[201~"

    function XTermPasteBegin(ret)
        set paste
        return a:ret
    endfunction

    inoremap <special> <expr> <Esc>[200~ XTermPasteBegin("")
endif

"----------------------------------------------------------
" search
"----------------------------------------------------------
set incsearch
set ignorecase
set smartcase
set hlsearch
set wrapscan
nmap <Esc><Esc> :nohlsearch<CR><Esc>


"----------------------------------------------------------
" plugins
"----------------------------------------------------------
call plug#begin()
Plug 'itchyny/lightline.vim'
let g:lightline = {
      \ 'colorscheme': 'solarized',
      \ }
call plug#end()
