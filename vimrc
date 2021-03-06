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

" Load all the other plugins
source ~/.vim/bundles.vim
let g:bundles_file ="~/.vim/bundles.vim"

filetype plugin indent on   " Automatically detect file types.
syntax on                   " Syntax highlighting
let mapleader=","
set shell=/bin/zsh
set mouse=a                 " Automatically enable mouse usage
set mousehide               " Hide the mouse cursor while typing
scriptencoding utf-8
set shortmess+=filmnrxoOtT  " Abbrev. of messages (avoids 'hit enter')
set viewoptions=folds,options,cursor,unix,slash " Better Unix  compatibility
set virtualedit=onemore     " Allow for cursor beyond last character
set nospell
set hidden                  " Allow buffer switching without saving
set autoread                " Set to auto read when a file is changed from the outside
set background=dark

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

set history=1000            " Store a ton of history (default is 20)
set backup                  " Backups are nice ...
set backupdir=~/.vim/backup
set noswapfile

if has('persistent_undo')
    set undofile                " So is persistent undo ...
    set undolevels=1000         " Maximum number of changes that can be undone
    set undoreload=10000        " Maximum number lines to save for undo on a buffer reload
    set undodir=~/.vim/backup
endif

if has ('gui')
    set guioptions+=c
    set guioptions-=T
    set guioptions-=l
    set guioptions-=r
    set guioptions-=L
    set guioptions-=R
    set clipboard=unnamed
    set guifont=Menlo:h14
else
    set term=xterm-256color
    set t_Co=256
endif

if has("gui_macvim")
  " Use bash for external commands on mvim.
  " set shell = bash
endif

" color tomorrow-night
" let g:solarized_termcolors = 256
" color solarized
let g:hybrid_use_iTerm_colors = 1
colorscheme hybrid

" Reduce timeout after <ESC> is recvd. This is only a good idea on fast links.
" Got at: https://code.google.com/p/iterm2/issues/detail?id=1322
set ttimeout
set ttimeoutlen=20
set notimeout

" Instead of reverting the cursor to the last position in the buffer, we
" set it to the first line when editing a git commit message
au FileType gitcommit au! BufEnter COMMIT_EDITMSG call setpos('.', [0, 1, 1, 0])

set showmode                    " Display the current mode

set cursorline                  " Highlight current line

highlight clear SignColumn      " SignColumn should match background for
                                " things like vim-gitgutter

highlight clear LineNr          " Current line number row will have same background color in relative mode.
                                " Things like vim-gitgutter will match LineNr highlight
"highlight clear CursorLineNr    " Remove highlight color from current line number

if has('cmdline_info')
    set ruler                   " Show the ruler
    set rulerformat=%30(%=\:b%n%y%m%r%w\ %l,%c%V\ %P%) " A ruler on steroids
    set showcmd                 " Show partial commands in status line and
                                " Selected characters/lines in visual mode
endif

if has('statusline')
    set laststatus=2

    " Broken down into easily includeable segments
    set statusline=%<%f\                     " Filename
    set statusline+=%w%h%m%r                 " Options
    " set statusline+=%{fugitive#statusline()} " Git Hotness
    set statusline+=\ [%{&ff}/%Y]            " Filetype
    set statusline+=\ [%{getcwd()}]          " Current dir
    set statusline+=%=%-14.(%l,%c%V%)\ %p%%  " Right aligned file nav info
endif

set complete-=i
set nrformats-=octal

set backspace=indent,eol,start  " Backspace for dummies
set linespace=0                 " No extra spaces between rows
set nu                          " Line numbers on
set showmatch                   " Show matching brackets/parenthesis
set incsearch                   " Find as you type search
set hlsearch                    " Highlight search terms
set winminheight=0              " Windows can be 0 line high
set ignorecase                  " Case insensitive search
set smartcase                   " Case sensitive when uc present
set wildmenu                    " Show list instead of just completing
set wildmode=list:longest,full  " Command <Tab> completion, list matches, then longest common part, then all.
set whichwrap=b,s,h,l,<,>,[,]   " Backspace and cursor keys wrap too
set scrolljump=5                " Lines to scroll when cursor leaves screen
set scrolloff=3                 " Minimum lines to keep above and below cursor
set list
set listchars=tab:›\ ,trail:•,extends:#,nbsp:. " Highlight problematic whitespace
set wildignore+=*.DS_Store
set wildignore+=*.beam
" ,*.so,*.pyc,*.NEF,*.xmp,*.avi,*.mp3,*.mp4,*.jpg,*.png,*.pdf,*.dmg,*.zip,*.rar,*.mkv,*.mov,*.key,*.tif
" set wildignore+=*.dmg,*.zip,*.rar,*.mkv,*.mov,*.key,*.tif,*.psd,*.docx,*.pages,*.key,*.xlsx,*.epub,*.rdp,*.bin,*.dat,*.exe,*.dll,*.pdb

set nowrap                      " Wrap long lines
set autoindent                  " Indent at the same level of the previous line
set shiftwidth=4                " Use indents of 4 spaces
set expandtab                   " Tabs are spaces, not tabs
set tabstop=4                   " An indentation every four columns
set softtabstop=4               " Let backspace delete indent
set nojoinspaces                " Prevents inserting two spaces after punctuation on a join (J)
set splitright                  " Puts new vsplit windows to the right of the current
set splitbelow                  " Puts new split windows to the bottom of the current
"set matchpairs+=<:>             " Match, to be used with %
set pastetoggle=<F12>           " pastetoggle (sane indentation on pastes)
"set comments=sl:/*,mb:*,elx:*/  " auto format comment blocks
" Remove trailing whitespaces and ^M chars
" autocmd FileType c,cpp,java,go,ruby,javascript,python,xml,yml autocmd BufWritePre <buffer> call StripTrailingWhitespace()
autocmd FileType haskell setlocal expandtab shiftwidth=2 softtabstop=2
autocmd BufNewFile,BufRead *.coffee set filetype=coffee
au BufNewFile,BufReadPost *.coffee, setlocal sw=2
autocmd Filetype javascript setlocal ts=2 sts=2 sw=2


" Workaround vim-commentary for Haskell
autocmd FileType haskell setlocal commentstring=--\ %s

nnoremap <silent> <C-L> :nohlsearch<CR><C-L>

" autocmd BufEnter README,TODO,BUGS       setlocal filetype=text
" autocmd BufEnter PLAN,*.notes           setlocal filetype=notes
" autocmd BufEnter *.md                   setlocal filetype=markdown

autocmd FileType c,cpp                  setlocal foldmethod=syntax cinoptions=(0,g0,N-s,:0,l1,t0
autocmd FileType erlang,haskell         setlocal expandtab tabstop=4 shiftwidth=4
autocmd FileType haskell,python         setlocal foldmethod=indent nofoldenable
autocmd FileType text,markdown          setlocal textwidth=72 formatoptions+=2l colorcolumn=+1 spell
autocmd FileType gitcommit              setlocal spell
autocmd FileType help                   setlocal nospell
autocmd BufNewFile,BufRead *.json set ft=javascript
" au FileType javascript call JavaScriptFold()

" Vim-airline
let g:airline_powerline_fonts=1
let g:airline_enable_branch=1
let g:airline_theme='dark'

map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

if &term =~ '^xterm'
  " solid underscore
  let &t_SI .= "\<Esc>[4 q"
  " solid block
  let &t_EI .= "\<Esc>[2 q"
  " 1 or 0 -> blinking block
  " 3 -> blinking underscore
  " Recent versions of xterm (282 or above) also support
  " 5 -> blinking vertical bar
  " 6 -> solid vertical bar
endif

function! OpenTestAlternate()
  let new_file = AlternateForCurrentFile()
  exec ':e ' . new_file
endfunction

function! AlternateForCurrentFile()
  let current_file = expand("%")
  let new_file = current_file
  let in_test = match(current_file, '^test/server/') != -1
  let going_to_test = !in_test
  let in_app = match(current_file, '\<api\>') != -1 || match(current_file, '\<factories\>') != -1  || match(current_file, '\<commands\>') != -1

  if going_to_test
    if in_app
      let new_file = substitute(new_file, '^app/', '', '')
    end
    let new_file = substitute(new_file, '\.e\?js$', '_test.js', '')
    let new_file = 'test/server/' . new_file
  else
    let new_file = substitute(new_file, '_test\.js$', '.js', '')
    let new_file = substitute(new_file, '^test/server/','', '')
    if in_app
      let new_file = 'app/' . new_file
    end
  endif
  return new_file
endfunction
nnoremap <leader>. :call OpenTestAlternate()<cr>

let g:mocha_js_command = "!clear; NODE_ENV='test' /Users/xajler/src/qualtrak/qcoach/node_modules/mocha/bin/mocha {spec} --harmony --require co-mocha --bail"
