set nocompatible

" Required for Vundle
filetype off

" ==============================================================================
" Plugin configurations
" ==============================================================================
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'itchyny/lightline.vim'
call vundle#end()

" Required for Vundle
filetype plugin on
filetype indent on

" ==============================================================================
" General Vim settings (not specific to any plugins)
" ==============================================================================
set history=500
set ruler
" Ignore case when searching
set ignorecase
set hlsearch
" Show matching brackets
set showmatch
set number
syntax enable

" ==============================================================================
" Configurations for tabs/spaces
" ==============================================================================
set expandtab
set smarttab
set shiftwidth=4
set tabstop=4
set ai
set si
set wrap

" ==============================================================================
" Disable Left, Right, Up, Down (arrow keys)
" ==============================================================================
nnoremap <Left> :echo "No left for you!"<CR>
nnoremap <Right> :echo "No right for you!"<CR>
nnoremap <Up> :echo "No up for you!"<CR>
nnoremap <Down> :echo "No down for you!"<CR>

" ==============================================================================
" Configurations for lightline plugin
" ==============================================================================
set laststatus=2
if !has('gui_running')
  set t_Co=256
endif

" lightline displays the Vim mode, so
" turn the default Vim mode display off
set noshowmode

let g:lightline = {
      \ 'colorscheme': 'jellybeans',
      \ }

" ==============================================================================
" Highlight the 101th column to be able to detect line limits when editing
" ==============================================================================
highlight ColorColumn ctermbg=magenta
call matchadd('ColorColumn', '\%101v', 100)

" ==============================================================================
" Highlight extra spaces to be able to easily detect them while editing
" ==============================================================================
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
