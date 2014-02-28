" Indentation settings for using 2 spaces instead of tabs.
" Do not change 'tabstop' from its default value of 8 to see tabs clearly.
set shiftwidth=2
set backspace=2
set expandtab
set tabstop=2

" Don't show variables for php.
let tlist_php_settings = 'php;c:class;f:function'

" Not too useful when the html is mixed with other languages (such as php).
function! FormatHtml()
  normal ggVGJ
  s/>\s*</>\r</g
  normal gg=G
endfunction

" Don't include html or javascript snippets for php files.
let g:snipMate = {}
let g:snipMate.scope_aliases = {}
let g:snipMate.scope_aliases['php'] = 'php'
