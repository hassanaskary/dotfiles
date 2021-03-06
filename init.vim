"
" Hassan Askary
"
" hassanaskary.com
" github.com/hassanaskary

set nocompatible " disable vi compatibility mode and enable useful vim functionality
set encoding=utf-8 " encoding utf-8
set termguicolors " enable true colors
syntax on
set number " show line numbers
set relativenumber " enable relative line numbering
set nowrap

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
set mouse=a " enable mouse usage
set clipboard=unnamedplus " copy and paste to system clipboard
set splitbelow splitright " always split right and below
set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:.
set list " show whitespace characters
set noshowmode
set signcolumn=yes " keep the gutter on the left open to avoid distractions
set spelllang=en_gb " enable spell check
autocmd FileType latex,tex,md,markdown setlocal spell " enable spell checking in following file types

let g:python3_host_prog='/home/hassan/misc/miniconda3/envs/pynvim/bin/python'

" always show at least three lines above/below the cursor.
set scrolloff=3
set sidescrolloff=5
set display+=lastline

" If vim plug is not installed then install it
if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
    silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
                \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source ~/.config/nvim/init.vim
endif

call plug#begin()
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'dyng/ctrlsf.vim'
Plug 'gruvbox-community/gruvbox'
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdcommenter'
Plug 'tmhedberg/SimpylFold'
Plug 'vim-airline/vim-airline'
Plug 'junegunn/goyo.vim'
Plug 'lervag/vimtex'
Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}
Plug 'dense-analysis/ale'
call plug#end()

" colorscheme
let g:gruvbox_italics=1
colorscheme gruvbox
set background=dark
let g:gruvbox_contrast_dark='hard'

" keybindings
let mapleader = "\<Space>"

" remap esc to jj
imap jj <ESC>

" movement by screen line instead of file line for j and k
nnoremap j gj
nnoremap k gk

" easier splits navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" find files with fzf
nmap <leader>p :Files<CR>

" CtrlSF keybindings
nmap <leader>a <Plug>CtrlSFPrompt
nmap <leader>A <Plug>CtrlSFCwordPath <CR>
nmap <leader>c :CtrlSFToggle<CR>

" CtrlSF plugin settings
let g:ctrlsf_auto_preview = 1
let g:ctrlsf_auto_focus = {
            \ "at": "start"
            \ }

" vimtex plugin settings
let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'

" semshi plugin settings
let g:semshi#simplify_markup = 'false'

" ale plugin settings
let g:ale_linters = {'python': ['pylint']}
let g:ale_fixers = {'python': ['black']}
let g:ale_sign_column_always = 1
