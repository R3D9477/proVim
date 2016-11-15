set fillchars+=vert:•

set grepprg=lid\ -Rgrep\ -s
set grepformat=%f:%l:%m

" encodings
set wildmenu
set wcm=<Tab>
menu Encoding.windows-1251 :e ++enc=cp1251 ++ff=dos<CR>
menu Encoding.utf-8 :e ++enc=utf8<CR>

if has("gui_running")
	" font
	autocmd GUIEnter * :if getfontname("Monospace") != "" | set guifont=Monospace\ 10 | endif
	
	" scrollbars
	autocmd GUIEnter * :set guioptions-=l | set guioptions-=L | set guioptions+=rb
endif

autocmd BufWinEnter,BufEnter ?* :execute "TabooRename '" . expand("%:t") . "'"

" configure vim-startify

autocmd User Startified setlocal cursorline

let g:startify_enable_special = 1
let g:startify_files_number   = 16
let g:startify_relative_path  = 1
let g:startify_change_to_dir  = 1
let g:startify_session_autoload = 1
let g:startify_session_persistence= 1
let g:startify_session_delete_buffers = 1

let g:startify_list_order = [
	\ ["   Sessions:"],
	\ "sessions",
	\ ["   Bookmarks:"],
	\ "bookmarks",
	\ ["   LRU:"],
	\ "files",
	\ ["   LRU within this dir:"],
	\ "dir"
\ ]

"let g:startify_bookmarks = [
"	
"\ ]

let g:startify_skiplist = [
	\ "COMMIT_EDITMSG",
	\ "bundle/.*/doc",
	\ "/data/repo/neovim/runtime/doc",
	\ "/Users/mhi/local/vim/share/vim/vim74/doc"
\ ]

hi StartifyBracket ctermfg=240
hi StartifyFooter  ctermfg=240
hi StartifyHeader  ctermfg=114
hi StartifyNumber  ctermfg=215
hi StartifySlash   ctermfg=240
hi StartifySpecial ctermfg=240

" Configure On VimEnter

function! ConfigureOnVimEnter()
	colorscheme lucius
	execute "LuciusLight"
	
	let g:airline_left_sep="▶"
	let g:airline_right_sep="◀"
	let g:airline_theme="lucius"
	
	if len(g:Files) == 0
		execute "Startify"
		
		" Unfold all lines
		call feedkeys("zi")
	endif
endfunction

autocmd VimEnter * :call ConfigureOnVimEnter()
