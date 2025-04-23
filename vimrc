syntax on
filetype indent plugin on
set nu cul so=5 ls=2 ru        "number cursorline scrolloff=5 laststatus=2 ruler
set si et ts=8 sw=8            "smartindent expandtab tabstop=8 shiftwidth=8
set hls is ic sms              "hlsearch incsearch ignorecase smartcase
set vb t_vb=  mouse=a          "no bell, enable mouse

imap jk <ESC> "<c-[>
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

finish
set autoread 
set showmatch
set copyindent 
set foldmethod=manual 
set nocompatible noerrorbells  " no 'VI', no bells
set nobk noswf nowrap          "nobackup noswapfile
set spr sb                     "splitright splitbelow 
set list listchars=tab:<_,trail:~ fillchars=eob:\  
set ttimeout ttyfast ttimeoutlen=1 "esc delay
set wildmode=list:longest,full

"cursor
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"
let mapleader = "\<Space>"
