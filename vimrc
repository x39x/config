syntax on
filetype indent plugin on
set nu ls=2 ru        "number cursorline scrolloff=5 laststatus=2 ruler
set hls is ic sms              "hlsearch incsearch ignorecase smartcase
set si et ts=8 sw=8            "smartindent expandtab tabstop=8 shiftwidth=8

imap jk <ESC> 
map J 5j
map K 5k
map H ^
map L $
vmap L $h
map ;; %
nnoremap ;j :let @/ = '<c-r><c-w>' \| set hls<CR>
nnoremap ;k :nohl<CR>
nnoremap ;z J

nmap gcc :norm I//<CR>
vmap gc :norm I//<CR>
inoremap { {<CR>}<Esc>O

"D: habamax koehler retrobox, "L: delek
set bg=dark
colorscheme koehler
