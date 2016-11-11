" encoding switcher
map <F8> :emenu Encoding.<TAB>

" switch to visual mode and extend selection upwards (visual, normal, insert)
vmap <S-Up> <Up>
nmap <S-Up> v<Up>
imap <S-Up> <esc>v<Up>
vmap <S-Down> <Down>
nmap <S-Down> v<Down>
imap <S-Down> <esc>v<Down>
vmap <S-Left> <Left>
nmap <S-Left> v<Left>
imap <S-Left> <esc>v<Left>
vmap <S-Right> <Right>
nmap <S-Right> v<Right>
imap <S-Right> <Right><esc>v<Right>

" replace selected text with new line (visual)
vmap <Enter> di<Enter>

" toggle word wrapping (visual, normal, insert)
vmap <F5> :set wrap!<CR>
nmap <F5> :set wrap!<CR>
imap <F5> <esc>:set wrap!<CR>i

" switch to insertmoe after text deleting (visual, normal)
map <Delete> <Delete>i

" delete when Backspace was pressed (visual, normal)
vmap <BS> <Delete>
nmap <BS> <Delete>

" tab to indent selected lines (visual, normal)
vmap <tab> >
nmap <tab> >>

" switch to isertmode
nmap <Enter> i

" ctrl+a - выделить весть текст (visual, normal, insert)
vmap <C-a> ggG
nmap <C-a> ggVG
imap <C-a> <esc>ggVG

" ctrl+k - удалить линию текста (normal, insert)
vmap <C-k> dd
nmap <C-k> dd
imap <C-k> <esc>ddi

" ctrl+c - копирование текста (visual)
vmap <C-c> "+yi

" ctrl+x - вырезать текст (visual)
vmap <C-x> "+di

" ctrl+v - вставка текста (visual, normal, insert, command)
function Paste()
	if col(".") > 1 && col(".") < len(getline(line(".")))
		call feedkeys("\"+gpi")
	else
		call feedkeys("\"+gpi\<Right>")
	endif
endfunction
vmap <C-v> "+gpi
nmap <C-v> :call Paste()<CR>
imap <C-v> <esc>:call Paste()<CR>
cmap <C-v> <C-r>+

" ctrl+s - сохранить документ (visual, normal, insert)
function Save()
	w!
	if col(".") == 1
		call feedkeys("i")
	else
		call feedkeys("i\<Right>")
	endif
endfunction
vmap <C-s> <esc>:w!<CR>
nmap <C-s> <esc>:w!<CR>
imap <C-s> <esc>:call Save()<CR>

" ctrl+z - отменить действие (visual, normal, insert)
vmap <C-z> :undo<CR>
nmap <C-z> :undo<CR>
imap <C-z> <esc>:undo<CR>i

" ctrl+y - повторить действие (visual, normal, insert)
vmap <C-y> :redo<CR>
nmap <C-y> :redo<CR>
imap <C-y> <esc>:redo<CR>i

" switch to isertmode
vmap i <esc>i

" search and replace text
map <C-f> :call SimpleSearch#SearchNext()<CR>
imap <C-f> <esc>:call SimpleSearch#SearchNext()<CR>
map <C-h> :call SimpleSearch#ReplaceAll()<CR>
imap <C-h> <esc>:call SimpleSearch#ReplaceAll()<CR>
