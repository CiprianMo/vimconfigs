set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Keep Plugin commands between vundle#begin/end.
"cpp syntax highlight 
Plugin 'octol/vim-cpp-enhanced-highlight'

"nertree
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" Disable Arrow keys in Escape mode
 map <up> <nop>
 map <down> <nop>
 map <left> <nop>
 map <right> <nop>
"
" " Disable Arrow keys in Insert mode
 imap <up> <nop>
 imap <down> <nop>
 imap <left> <nop>
 imap <right> <nop>
syntax enable

"nertree on
autocmd vimenter * NERDTree
"ctrlp
set runtimepath^=~/.vim/bundle/ctrlp.vim
set tabstop=4
set softtabstop=4
set expandtab
set number
set showcmd
"5 line will always be visible around the cursor
set scrolloff=5
"auto complete filenames to the longest match 
set wildmode=longest,list
filetype indent on
set cindent
set lazyredraw
set wildmenu
set showmatch
"seraching
set incsearch
set hlsearch

"set the leader to comma
let mapleader=","

" 'jk' insetead of ESC
inoremap jk <esc>

"save when you don't have permission
cnoremap w!! w !sudo tee % >/dev/null

"makes moving around easier
nnoremap j gj
nnoremap k gk

nnoremap <F4> :NERDTreeToggle<CR>
"colorscheme 
syntax on

colorscheme thaumaturge


