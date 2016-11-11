function! SimpleSearch#SearchNext ()
	let search_text = input("Search: ")
	if len(search_text) > 0
		"call feedkeys("\<esc>")
		
		execute "normal! /" . search_text . "\<CR>v//e\<CR>"
	endif
endfunction

function! SimpleSearch#ReplaceAll ()
	if &modifiable == 1
		let search_text = input("Search: ")
		if len(search_text) > 0
			let replace_text = input("Replace: ")
			execute "%s/" . search_text . "/" . replace_text . "/g"
			1
			execute "normal! /" . replace_text . "\<CR>v//e\<CR>"
		endif
	endif
endfunction
