syntax on
filetype indent plugin on
set nu si hls is ic sms bg=dark 
colorscheme koehler "D: habamax koehler retrobox, "L: delek
imap jk <ESC>
map H ^
map L $
vmap L $h
nnoremap ;j :let @/ = '<c-r><c-w>' \| set hls<CR>
nnoremap ;k :nohl<CR> 
