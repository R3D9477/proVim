let g:PConfigs = [] " plugins (must be loaded first)
let g:CConfigs = [] " other configs
let g:Files    = [] " files

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

function! SetVimConfigs(dirName)
	for conf_fname in split(glob('~/.vim/'.a:dirName.'/*.vim'), '\n')
		if match(fnamemodify(conf_fname, ':t'), 'plugin')  >= 0
			call add(g:PConfigs, conf_fname)
		else
			call add(g:CConfigs, conf_fname)
		endif
	endfor
endfunction

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" add main config

call SetVimConfigs('profiles/main')

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" add profiles

let set_default = 1

let i = 0
while i < argc()
	let is_profile = 0
	let p = split(escape(fnameescape(argv(i)), '.'), '=') 
	
	if len(p) > 1
		if p[0] == 'profile'
			execute 'bdelete' (i + 1)
			call SetVimConfigs('profiles/' . p[1])
			let set_default = 0
			let is_profile = 1
		endif
	endif
	
	if is_profile == 0
		call add(g:Files, argv(i))
	endif
	
	let i = i + 1
endwhile

if set_default == 1
	call SetVimConfigs('profiles/develop')
endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" load plugins

if has('vim_starting')
	set nocompatible
	set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('~/.vim/bundle/'))

NeoBundleFetch 'Shougo/neobundle.vim'
NeoBundle 'Shougo/vimproc'

for p_config in g:PConfigs
	exe 'source' p_config
endfor

call neobundle#end()

filetype plugin indent on

NeoBundleCheck

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" load configs

for c_config in g:CConfigs
	exe 'source' c_config
endfor
