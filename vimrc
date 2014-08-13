set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" List of bundles
"-----------------
Bundle 'gmarik/vundle'
Bundle 'bling/vim-airline'
Bundle 'vimwiki/vimwiki'
Bundle 'tpope/vim-fugitive'
Bundle 'scrooloose/nerdtree'
"Bundle 'Valloric/YouCompleteMe'

filetype plugin indent on

" Vim-airline setup
"-------------------
set laststatus=2
let g:airline_powerline_fonts=1
set t_Co=256
let g:airline_theme='base16'
let g:airline#extensions#tabline#enabled=1


" vimwiki setup
"-------------------
let g:vimwiki_list=[{'path':'~/.vim/vimwiki'}]

" Shortkeys loading
"-------------------
execute 'source'.$HOME.'/.vim/shortkeys.vim'

" Bclose loading
"-------------------
execute 'source'.$HOME.'/.vim/Bclose.vim'

" Quit if only window left is NERDTree
"-------------------
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" Open NERDTree at startup
"-------------------
"autocmd vimenter * NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

set number
colors distinguished
