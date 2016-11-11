set nocompatible

" Set Window
set go-=m
set go-=T
set go-=r
set wrap!
set number
set wildmenu
if has("gui") | set guioptions-=e | endif
autocmd GUIEnter * call GvimToggleMaximize()

" Folding
set foldmethod=indent
set foldlevel=1
set foldcolumn=3
set foldnestmax=10
"set foldenable

" View
autocmd BufUnload,BufLeave ?* silent mkview
autocmd BufRead ?* silent loadview

" Indent
set ts=3
set sw=3
set list
set listchars=trail:·,tab:▸\ ,extends:>,precedes:<

set autoindent
set noexpandtab

filetype plugin indent on

let g:indent_guides_start_level=1
let g:indent_guides_guide_size=1
let g:indent_guides_auto_colors=0

autocmd VimEnter,Colorscheme ?* hi IndentGuidesOdd guibg=#E6E6E6 guifg=#cbcbcb
autocmd VimEnter,Colorscheme ?* hi IndentGuidesEven guibg=#F2F2F2 guifg=#dbdbdb
autocmd VimEnter ?* IndentGuidesEnable

" Syntax, Autocompletion
syntax on
filetype on
filetype plugin on
autocmd VimEnter * set completeopt=menuone,preview
