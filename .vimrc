" command line completion
set wildchar=<Tab> wildmenu wildmode=full
" move between buffers without saving
set hidden
" tab and shift tab to cycle through buffers
nnoremap  <silent>   <tab>  :if &modifiable && !&readonly && &modified <CR> :write<CR> :endif<CR>:bnext<CR>
nnoremap  <silent> <s-tab>  :if &modifiable && !&readonly && &modified <CR> :write<CR> :endif<CR>:bprevious<CR>

" default color scheme is one with dark blue for comments. Use lighter
" From https://unix.stackexchange.com/questions/88879/better-colors-so-comments-arent-dark-blue-in-vim
" For available color schemes: ls /usr/share/vim/vimNN/colors/
" where NN is the version
color desert
