set nocompatible
filetype off

let mapleader=","
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-surround'
Plugin 'kien/ctrlp.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'altercation/vim-colors-solarized'
Plugin 'scrooloose/nerdcommenter'
Plugin 'valloric/youcompleteme'
Plugin 'KuoE0/vim-scavenger'
Plugin 'jiangmiao/auto-pairs'
Plugin 'tpope/vim-dispatch'
Plugin 'hdima/python-syntax'
Plugin 'klen/python-mode'
Plugin 'octol/vim-cpp-enhanced-highlight'
call vundle#end()

filetype plugin indent on
syntax enable
set background=dark
colorscheme solarized

" ========== vim settings ==========
set number
set relativenumber
set showcmd
set wildmenu
set shell=/bin/bash
set laststatus=2
autocmd FileType c,cpp,cc,h,hpp autocmd BufWritePre <buffer> %s/\s\+$//e

" ========== plugin settings ==========
let g:pymode_rope = 0
let python_highlight_all = 1
let g:cpp_class_scope_highlight = 1
let g:cpp_experimental_emplate_highlight = 1
let g:ycm_global_ycm_extra_conf = '/home/chao/avi-dev/myscripts/.ycm_extra_conf.py'
let g:scaverger_exclude_on_blank_lines = ['python']

" ========== mappings ==========
nnoremap <leader>g YcmCompleter GoTo
nnoremap <S-q> :q<CR>
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap vv :vsplit<CR>
nnoremap ss :split<CR>
