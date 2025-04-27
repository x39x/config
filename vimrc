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

nmap gcc :norm I//<CR>
vmap gc :norm I//<CR>
inoremap { {<CR>}<Esc>O

"D: habamax koehler retrobox, "L: delek
set bg=dark
colorscheme koehler
nnoremap ;j :let @/ = '<c-r><c-w>' \| set hls<CR>
nnoremap ;k :nohl<CR>
"cursor
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"
