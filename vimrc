" Basic
set encoding=utf-8
set nu
set t_Co=256

syntax on

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Use CTRL-S for saving, also in Insert mode
noremap <C-S> :update<CR>
vnoremap <C-S> <C-C>:update<CR>
inoremap <C-S> <C-O>:update<CR>

" Enable folding
set foldmethod=indent
set foldlevel=99

" Python
" This will mark extra whitespace as bad, and probably color it red.
" au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix |

let python_highlight_all=1

" Airline
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='molokai'

" NERDTree
autocmd vimenter * NERDTree

" Tagbar
nmap <F8> :TagbarToggle<CR>

"Autocomplete
let g:clang_library_path='/usr/lib/llvm-3.8/lib/libclang.so.1'

" Plugins
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
" Plugin definitions
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'majutsushi/tagbar'
Plugin 'tomasr/molokai'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

Bundle 'Valloric/YouCompleteMe'

call vundle#end()
filetype plugin indent on
