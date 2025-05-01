syntax on
filetype indent plugin on
set nu cul ls=2 ru        "number cursorline laststatus=2 ruler
set hls is ic sms si      "hlsearch incsearch ignorecase smartcase
set si et                 "smartindent expandtab
imap jk <ESC>
map J 2j
map K 2k
map H ^
map L $
vmap L $h
noremap q %
noremap % q

"D: habamax koehler retrobox, "L: delek
set bg=dark
colorscheme koehler
