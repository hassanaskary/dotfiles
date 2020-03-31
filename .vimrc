" Hassan Askary's vimrc

" If vim plug is not installed then install it
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

" Theme
Plug 'franbach/miramare'

Plug 'preservim/nerdtree'

call plug#end()

" Disable vi compatibility mode and enable useful vim functionality
set nocompatible

" Enable true colors
set termguicolors

" Enable italic for keywords in colorscheme
let g:miramare_enable_italic = 1

" Colorscheme
colorscheme miramare

" Populate airline_symbols dictionary with powerline symbols
let g:airline_powerline_fonts = 1

" Airline theme
let g:airline_theme = 'miramare'

" Turn on syntax highlighting
syntax on

" Show line numbers
set number

" Enable relative line numbering
set relativenumber

" Use 4 spaces instead of tabs
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4

" Always show status line at the bottom
set laststatus=2

" Disable unintuitive backspace behavior
set backspace=indent,eol,start

" Enable auto indententation
set autoindent

" Enable case insensitive search
set ignorecase

" If search has any capital letter then search becomes case sensitive
set smartcase

" Start searching as you type
set incsearch

" Show cursor position all the time
set ruler

" Display completion message in a status line
set wildmenu

" Highlight matched search results
set hls

" Clear highlighting of hlsearch by Ctrl-L
if maparg('<C-L>', 'n') ==# ''
  nnoremap <silent> <C-L> :nohlsearch<C-R>=has('diff')?'<Bar>diffupdate':''<CR><CR><C-L>
endif

" Always show at least one line above/below the cursor.
if !&scrolloff
  set scrolloff=1
endif
if !&sidescrolloff
  set sidescrolloff=5
endif
set display+=lastline

" CtrlP rebinding to be invoked by pressing CTRL-P
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" Shortcut for NERDTree
map <C-n> :NERDTreeToggle<CR>

" Close vim if only window open is NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
