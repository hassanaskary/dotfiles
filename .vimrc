" Hassan Askary's vimrc
" hassanaskary.com

" ##########################################################
" plugins start
" ----------------------------------------------------------

" if vim plug is not installed then install it
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
Plug 'https://github.com/ctrlpvim/ctrlp.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'sheerun/vim-polyglot'
Plug 'morhetz/gruvbox'
Plug 'preservim/nerdtree'
call plug#end()

" ----------------------------------------------------------
" plugins end
" ##########################################################

set nocompatible " disable vi compatibility mode and enable useful vim functionality
set encoding=utf-8 " encoding utf-8
set termguicolors " enable true colors

" ##########################################################
" themes start
" ----------------------------------------------------------

let g:gruvbox_italic=1 " enable italics for keywords in gruvbox
colorscheme gruvbox
set background=dark

let g:airline_powerline_fonts = 1 " populate airline_symbols dictionary with powerline symbols
let g:airline_theme = 'gruvbox'

" ----------------------------------------------------------
" themes end
" ##########################################################

syntax on
set number " show line numbers
set relativenumber " enable relative line numbering

" use 4 spaces instead of tabs
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4

set laststatus=2 " always show status line at the bottom
set backspace=indent,eol,start " disable unintuitive backspace behavior
set autoindent " enable auto indententation
set showcmd " show current command in status
set ignorecase " enable case insensitive search
set smartcase " if search has any capital letter then search becomes case sensitive
set incsearch " start searching as you type
set ruler " show cursor position all the time
set wildmenu " display completion message in a status line
set hls " highlight matched search results
set colorcolumn=80 " show colorcolumn
set cursorline " highlight cursor position

" always show at least three lines above/below the cursor.
set scrolloff=3
set sidescrolloff=5
set display+=lastline

" ##########################################################
" keybindings start
" ----------------------------------------------------------

" remap leader to space
let mapleader = "\<Space>"

" remap spliting a window to <space>w
nnoremap <leader>w <C-w>

" remap opening tabs and moving between them to <space>t and <space>n, <space>m respectively
nnoremap <leader>t :tabe<CR>
nnoremap <leader>m :tabn<CR>
nnoremap <leader>n :tabp<CR>

" clear highlighting of hlsearch by Ctrl-L
if maparg('<C-L>', 'n') ==# ''
  nnoremap <silent> <C-L> :nohlsearch<C-R>=has('diff')?'<Bar>diffupdate':''<CR><CR><C-L>
endif

" CtrlP remap to <space>p
nnoremap <leader>p :CtrlP<CR>

" shortcut for NERDTree
map <C-n> :NERDTreeToggle<CR>

" movement by screen line instead of file line for j and k
nnoremap j gj
nnoremap k gk

" remap help key to esc to avoid hitting it accidently
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

" ----------------------------------------------------------
" keybindings end
" ##########################################################

" close vim if only window open is NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
