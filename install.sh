#!/bin/bash


ln -s ~/src/dotfiles/* ~
cd ~
mv vim .vim
mv vimrc .vimrc

rm install.sh

mkdir .vim/backup 

git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

vim +BundleInstall +qall

# Inconsolata-dz-Powerline

# hi erlangType           guifg=#2F7B59 guibg=bg          gui=NONE
# hi erlangRecord         guifg=#217E20 guibg=bg          gui=NONE
# hi erlangRecordDef      guifg=#217E20 guibg=bg          gui=NONE
# hi erlangMacro          guifg=#BF8D23 guibg=bg          gui=NONE
# hi erlangTuple          guifg=#DC5D1B guibg=bg          gui=NONE
# hi erlangList           guifg=#5ABF36 guibg=bg          gui=NONE
# hi erlangBIF            guifg=#679F63 guibg=bg          gui=NONE
# hi erlangStringModifier guifg=#B783E6 guibg=#F2F2F2     gui=NONE
# hi erlangBoolean        guifg=#C51E2B guibg=bg          gui=NONE
# hi erlangOperator       guifg=#25765D guibg=bg          gui=NONE
# hi erlangGuard          guifg=#BF24A8 guibg=bg          gui=NONE
# hi erlangBitType        guifg=#777A7E guibg=bg          gui=NONE
# hi erlangBinary         guifg=#7265BF guibg=bg          gui=NONE


# hi markdownUrl       guifg=#af8787 guibg=NONE gui=NONE      ctermfg=138 ctermbg=NONE cterm=NONE
# hi markdownCode      guibg=#3a3a3a guifg=#a7bee4 gui=BOLD ctermbg=237 ctermfg=152 cterm=BOLD
# hi markdownCodeBlock guifg=#c5b1e4 ctermfg=182
# hi markdownLinkText  guifg=#0087af gui=UNDERLINE ctermfg=31

# hi markdownH1        guifg=#d75f00 guibg=NONE gui=BOLD,ITALIC,UNDERLINE ctermfg=166  ctermbg=NONE cterm=BOLD
# hi markdownH2        guifg=#d75f87 guibg=NONE gui=BOLD,UNDERLINE ctermfg=168  ctermbg=NONE cterm=BOLD
# hi markdownH3        guifg=#d78787 guibg=NONE gui=ITALIC,UNDERLINE ctermfg=174  ctermbg=NONE cterm=BOLD

# hi markdownBold      guifg=#ffd75f guibg=NONE gui=BOLD      ctermfg=221 ctermbg=NONE cterm=BOLD
# hi markdownItalic    guifg=#afff87 guibg=NONE gui=ITALIC      ctermfg=156 ctermbg=NONE cterm=NONE

# hi markdownOrderedListMarker  guifg=#5fff00  gui=BOLD ctermfg=82 cterm=BOLD
# hi markdownListMarker  guifg=#ffff00  gui=BOLD ctermfg=226 cterm=BOLD

# hi markdownBlockQuote   guifg=#00ffff gui=BOLD ctermfg=14 cterm=BOLD