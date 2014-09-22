" Syntax highlighting for .todo files
" @author cathywu

" Set color scheme
colorscheme desert256

" Enable auto folds
setlocal foldmethod=indent

" Regular expressions
" bug: chinese characters break matching
" see http://tech.groups.yahoo.com/group/vim/message/94968
syn match brackets /\[\p\+\]/ skipwhite
syn match link /\[\(http\|www\)\p\+\]/ skipwhite

syn match day /^\w\{3}\s\d\{2}-\d\{2}-\d\{4}/ nextgroup=delimit skipwhite
syn match today /^>>\s\w\{3} \d\{2}-\d\{2}-\d\{4}/ nextgroup=delimit skipwhite

syn match week /^\w\{4}\s\d\{2}-\d\{2}-\d\{4}/ nextgroup=delimit skipwhite
syn match thisweek /^>>\s\w\{4} \d\{2}-\d\{2}-\d\{4}/ nextgroup=delimit skipwhite

syn match delimit /,\s/ nextgroup=status contained skipwhite
syn match status /\p\+$/ contained skipwhite

syn match done /^+\s/ nextgroup=donetask skipwhite
" syn match donecategory /\(\w\+[.-]\{-}\)\+:/ nextgroup=donetask contained skipwhite
syn match category /^\(\w\+[.-]\{-}\)\+:/ skipwhite
syn match donetask /\p\+$/ contained skipwhite
syn match removed /^-\s\p\+/ skipwhite

" Syntax highlighting
hi link day Comment 
hi link today Statement

hi link week Comment
hi link thisweek Statement

hi link delimit Normal
hi link status PreProc

hi link done Typedef
" hi link donecategory Tag
hi link donetask MoreMsg
hi link category Tag
hi link removed Ignore

hi link brackets Constant
hi link link Debug
