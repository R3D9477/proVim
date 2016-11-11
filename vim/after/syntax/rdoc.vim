" File: .vim/syntax/rdoc.vim

echom "Our syntax highlighting code will go here."

syn region htmlLink start="<a\>\_[^>]*\<href\>" end="</a>"me=e-4 keepend contains=@Spell,htmlTag,htmlEndTag,htmlSpecialChar,htmlPreProc,htmlComment,htmlLinkText,javaScript,@htmlPreproc
syn match htmlLinkText contained contains=@Spell,htmlTag,htmlEndTag,htmlSpecialChar,htmlPreProc,htmlComment,htmlLinkText,javaScript,@htmlPreproc "^\s*\zs.\{-}\ze\s*$"
syn match htmlLinkText contained contains=@Spell,htmlTag,htmlEndTag,htmlSpecialChar,htmlPreProc,htmlComment,htmlLinkText,javaScript,@htmlPreproc "\S.\{-}\ze\s*$"

" enable the new syntax
hi def link htmlLink Underlined
hi def link htmlLinkText Underlined

" RDoc inline links:           protocol   optional  user:pass@       sub/domain                 .com, .co.uk, etc      optional port   path/querystring/hash fragment
"                            ------------ _____________________ --------------------------- ________________________ ----------------- __
syntax match rdocInlineURL /https\?:\/\/\(\w\+\(:\w\+\)\?@\)\?\([A-Za-z][-_0-9A-Za-z]*\.\)\{1,}\(\w\{2,}\.\?\)\{1,}\(:[0-9]\{1,5}\)\?\S*/

hi def link rdocInlineURL Underlined
