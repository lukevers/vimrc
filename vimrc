" Vundle setup
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'gioele/vim-autoswap'
Plugin 'eslint/eslint'
Plugin 'neoclide/coc.nvim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tssm/fairyfloss.vim'
Plugin 't9md/vim-choosewin'

call vundle#end()
filetype plugin indent on

""""""""""
""""""""""

syntax on
set encoding=utf-8

" mouse (kind of only does anything on desktop though)
set mouse=a

" enable spell check
set spell

set backspace=indent,eol,start
set nowrap
set splitbelow

" set tab settings
set tabstop=2
set shiftwidth=2
set smarttab
set expandtab

" show line numbers
set number

" colors
set termguicolors
set background=dark
colorscheme fairyfloss

" show tabs visually
set list lcs=tab:\┆·
highlight SpecialKey ctermfg=59 guifg=#65737e

" backup/swap files
set backup
set backupdir=~/.vim/backup/
set directory=~/.vim/swap/

" NERDTree
nmap <C-b> :NERDTreeToggle<cr>
let NERDTreeShowHidden=1
let NERDTreeMouseMode=2
let NERDTreeKeepTreenInNewTab=1
autocmd VimEnter * if !argc() | NERDTree | endif

let g:NERDTreeGitStatusIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ "Unknown"   : "?"
    \ }

" Hide default vim "-- INSERT --" and other modes
set noshowmode

" Display overlay
let g:choosewin_overlay_enable = 1
nmap  -  <Plug>(choosewin)
