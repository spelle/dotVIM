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

set number
colors distinguished
