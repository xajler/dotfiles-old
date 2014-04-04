Bundle 'ctrlp.vim'
Bundle 'vim-erlang/vim-erlang-runtime'
Bundle 'myusuf3/numbers.vim'
Bundle 'tpope/vim-markdown'
Bundle 'gkz/vim-ls'
Bundle 'altercation/vim-colors-solarized'
Bundle 'scrooloose/syntastic'
Bundle 'kchmck/vim-coffee-script'
Bundle 'geekjuice/vim-mocha'
Bundle 'jelera/vim-javascript-syntax'
Bundle 'tpope/vim-fugitive'
Bundle 'w0ng/vim-hybrid'

" let g:solarized_degrade = 1

let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'

Bundle 'Shougo/vimproc', { 'build':
        \ { 'mac' : 'make -f make_mac.mak',
        \ 'unix' : 'make -f make_unix.mak' } }

Bundle 'bling/vim-airline'

" let g:mocha_coffee_command = "!cortado {spec}"

let g:markdown_fenced_languages = ['ruby', 'sh', 'erlang']

augroup markdown
    au!
    au BufNewFile,BufRead *.md,*.markdown setlocal filetype=markdown
augroup END
