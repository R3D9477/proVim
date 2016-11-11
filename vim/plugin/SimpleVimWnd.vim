function WmCtrl(wnd_status)
	if substitute(system('uname'), "\n", "", "") == "Linux"
		call system('wmctrl -r :ACTIVE: -b toggle,'.a:wnd_status)
	endif
endfunction

function GvimToggleFullscreen()
	call WmCtrl('fullscreen')
endfunction

function GvimToggleMaximize()
	call WmCtrl('maximized_vert,maximized_horz')
endfunction
