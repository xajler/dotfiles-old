set nocompatible    " be iMproved
" If the encoding is not set early then some characters
" like the one used in showbreak look weird
set encoding=utf-8

filetype off                   " required! by vundle
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'
Bundle 'tpope/vim-markdown'

set background=light
set guioptions+=c
set guioptions-=T
set guioptions-=l
set guioptions-=r
set guioptions-=L
set guioptions-=R  
set nonu
set laststatus=0
set linespace=5
set guifont=Nitti\ PX:h26
set tw=60

let g:markdown_fenced_languages = ['ruby', 'sh', 'erlang']

augroup markdown
    au!
    au BufNewFile,BufRead *.md,*.markdown setlocal filetype=markdown
augroup END

colorscheme iawriter
g:vimroom_width = 56
