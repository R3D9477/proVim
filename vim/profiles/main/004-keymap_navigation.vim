" F11 - toggle full-screen mode
map <F11> :call GvimToggleFullscreen()<CR>
imap <F11> <esc>:call GvimToogleFullscreen()<CR>i

" F12 - toggle maximize
map <F12> :call GvimToggleMaximize()<CR>
imap <F12> <esc>:call GvimToogleMaximize()<CR>i

" ctrl+esc - закрыть Vim (visual, normal, insert, command)
vmap <C-esc> <esc>:qa<CR>
nmap <C-esc> :qa<CR>
imap <C-esc> <esc>:qa<CR>

" map Ctrl-Tab to switch window (visual, normal, insert)
vmap <C-Up> <C-W><Up>
nmap <C-Up> <C-W><Up>
imap <C-Up> <esc><C-W><Up>
vmap <C-Down> <C-W><Down>
nmap <C-Down> <C-W><Down>
imap <C-Down> <esc><C-W><Down>
vmap <C-Left> <C-W><Left>
nmap <C-Left> <C-W><Left>
imap <C-Left> <esc><C-W><Left>
vmap <C-Right> <C-W><Right>
nmap <C-Right> <C-W><Right>
imap <C-Right> <esc><C-W><Right>

" scroll horizontally
vmap <C-PageUp> 50z<Left>
nmap <C-PageUp> 50z<Left>
imap <C-PageUp> <esc>50z<Left>i
vmap <C-PageDown> 50z<Right>
nmap <C-PageDown> 50z<Right>
imap <C-PageDown> <esc>50z<Right>i

" ctrl+q - сохранить всё и закрыть Vim (visual, normal, insert, command)
vmap <C-q> <esc>:wa<CR>:qa<CR>
nmap <C-q> :wa<CR>:qa<CR>
imap <C-q> <esc>:wa<CR>:qa<CR>

" ctrl+o - открыть документ в текущей вкладке (visual, normal, insert)
"map <silent> <C-o> <esc>:Explore<CR>

" ctrl+shift+o - открыть документ в split текущей вкладке (visual, normal, insert)
"map <silent> <C-S-o> <esc>:Sexplore<CR>

" ctrl+tab - открыть следующую вкладку (visual, normal, insert, command)
map <silent> <C-Tab> <esc>:tabn<CR>

" ctrl+shift+tab - открыть пердыдущую вкладку (visual, normal, insert, command)
map <silent> <C-S-Tab> <esc>:tabprev<CR>
