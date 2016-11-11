" http://stackoverflow.com/a/9459366

let g:link_regex="[a-z]*:\/\/[^ >,;]*"

exec "match Underlined '" . g:link_regex . "'"

function! HandleURL()
	let s:uri = matchstr(getline("."), g:link_regex)
	if s:uri != ""
		call system("xdg-open '".s:uri."'")
	endif
endfunction

noremap <2-LeftMouse> <2-LeftMouse>:call HandleURL()<esc>
