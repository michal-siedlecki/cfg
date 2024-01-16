set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
Bundle 'Valloric/YouCompleteMe'
Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'agude/vim-eldar'
" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree
let g:SimpylFold_docstring_preview=1

let python_highlight_all=1
syntax on

au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix

au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2 

let g:ycm_autoclose_preview_window_after_completion=1

map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

set encoding=utf-8
set splitbelow
set splitright
set nu
"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
" Enable folding with the spacebar
nnoremap <space> za

" Enable folding
set foldmethod=indent
set foldlevel=99
let g:eldar_term_background  = "Black"
let g:eldar_background  = "#2B2B2B"
colorscheme eldar

" ============================ 
" To edit multiple lines at once 
" press ctrl+v, then I/A/c insert/append/replace
" type new text
" hit esc to apply changes




