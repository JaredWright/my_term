" --------- Setup Vundle Plugin Manager ----------
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'

" -------- <VundlePlugins> --------
Plugin 'cscope.vim'						" Goto symbols/definitions
Plugin 'scrooloose/nerdtree'			" Tree-like file display for vim
Plugin 'jistr/vim-nerdtree-tabs'		" Tabs for NERDTree
Plugin 'kien/ctrlp.vim'					" Search for anything with ctp + p
Plugin 'tpope/vim-fugitive'				" Git integration
Plugin 'vim-airline/vim-airline'		" Display useful stuff near the bottom
Plugin 'a.vim'							" Switch between C header/source files 
Plugin 'scrooloose/nerdcommenter'		" Comment out code with <leader>cc
Plugin 'vim-scripts/indentpython.vim'	" Better python indentations plugin
Plugin 'tmhedberg/SimpylFold'			" Code folding plugin
Plugin 'tpope/vim-dispatch'				" Run makefile tasks in the background
" -------- </VundlePlugins> -------- 

call vundle#end()
filetype plugin indent on

"  -------- High Level Vim Configs --------
let mapleader = "\<Space>"	" Leader key = space bar
set encoding=utf-8 			" Edit in UTF-8 mode
syntax on					" Turn syntax highlighting on
set number					" Turn on line numbering
colorscheme monokai			" Use Sublime-Text-Like monokai colorscheme
set tabstop=4 				" Tab = 4 spaces 
set shiftwidth=4
set hlsearch				" Highlight words while searching
hi Search cterm=NONE ctermfg=black ctermbg=cyan	
set incsearch				" Jump to words as you type them in a search
let python_highlight_all=1
nnoremap <leader>w :w<CR>
nnoremap <leader>q :q<CR>

" -------- Paint a vertical line at 80 characters --------
if exists('+colorcolumn')
  set colorcolumn=80
else
    au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)
endif

" -------- Split-pane navigation using ctl + h/j/k/l --------
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" -------- Tab navigation with <leader> tab number --------
noremap <leader>1 1gt
noremap <leader>2 2gt
noremap <leader>3 3gt
noremap <leader>4 4gt
noremap <leader>5 5gt
noremap <leader>6 6gt
noremap <leader>7 7gt
noremap <leader>8 8gt
noremap <leader>9 9gt
noremap <leader>0 :tablast<cr>

" --------- Code folding: <leader>f --------
set foldmethod=indent
set foldlevel=99
nnoremap <leader>f za
let g:SimpylFold_docstring_preview=1

" --------- Switch between source/header with <leader>a --------
nnoremap <leader>a :A<CR>

" ---------- Cscope mappings ------------
"  NOTE Use ctl + o to jump out of jump stack, ctl + i to jmp into jump stack
nnoremap <leader>g <C-]>	" Map leader g to "goto definition"
nnoremap <C-G> <C-]>		" Map ctl + g to "goto definition"

" -------- NERDTree Settings --------
let NERDTreeIgnore=['\.pyc$', '\~$'] 	" Ignore files in NERDTree
nnoremap <leader>t :NERDTreeTabsToggle<CR>
nnoremap <leader>r :NERDTreeFind<CR>

" -------- NERD Commenter Configs --------
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 0
" Align line-wise comment delimiters flush left 
let g:NERDDefaultAlign = 'left'
" C delimiters by default
let g:NERDAltDelims_c = 1
" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1
" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" -------- Async.vim settings --------
nnoremap <leader>m :Make!<CR>

