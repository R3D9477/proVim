set autowrite

"map <expr> <C-Space> pumvisible() \|\| &omnifunc == '' ?
"	\ "\<lt>C-n>" :
"	\ "\<lt>C-x>\<lt>C-o><c-r>=pumvisible() ?" .
"	\ "\"\\<lt>c-n>\\<lt>c-p>\\<lt>c-n>\" :" .
"	\ "\" \\<lt>bs>\\<lt>C-n>\"\<CR>"

"map <C-@> <C-Space>

set completeopt=longest,menuone

"imap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

"imap <expr> <C-n> pumvisible() ? '<C-n>' : '<C-n><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'

"imap <expr> <M-,> pumvisible() ? '<C-n>' : '<C-x><C-o><C-n><C-p><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'

" open omni completion menu closing previous if open and opening new menu without changing the text
imap <expr> <C-Space> (pumvisible() ? (col('.') > 1 ? '<Esc>i<Right>' : '<Esc>i') : '') .
	\ '<C-x><C-o><C-r>=pumvisible() ? "\<lt>C-n>\<lt>C-p>\<lt>Down>" : ""<CR>'
" open user completion menu closing previous if open and opening new menu without changing the text
imap <expr> <S-Space> (pumvisible() ? (col('.') > 1 ? '<Esc>i<Right>' : '<Esc>i') : '') .
	\ '<C-x><C-u><C-r>=pumvisible() ? "\<lt>C-n>\<lt>C-p>\<lt>Down>" : ""<CR>'
