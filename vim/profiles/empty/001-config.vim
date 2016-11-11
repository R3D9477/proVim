function GetDeskResolution()
	if substitute(system("uname"), "\n", "", "") == "Linux"
		let dRes = split(substitute(system("xdpyinfo | grep 'dimensions' | awk '{ print $2 }'"), "\n", "", ""), "x")
		return [str2float(dRes[0]), str2float(dRes[1])]
	endif
	
	return [0, 0]
endfunction

function GvimPadding(...)
	if len(a:000) == 1
		let x1 = a:1
		let y1 = a:1
		let x2 = a:1
		let y2 = a:1
	elseif len(a:000) == 2
		let x1 = a:1
		let y1 = a:2
		let x2 = a:1
		let y2 = a:2
	elseif len(a:000) == 3
		let x1 = a:1
		let y1 = a:2
		let x2 = a:3
		let y2 = a:2
	elseif len(a:000) == 4
		let x1 = a:1
		let y1 = a:2
		let x2 = a:3
		let y2 = a:4
	else
		return
	endif
	
	let dresol = GetDeskResolution()
	
	if dresol[0] > 0 && dresol[1] > 0
		let &columns = string((dresol[0] - (x1 + x2)) / 8.2)
		let &lines = string((dresol[1] - (y1 + y2)) / 18.2)
		
		exec "winpos ".x1." ".y1
	endif
endfunction

autocmd GUIEnter * call GvimPadding(50)
