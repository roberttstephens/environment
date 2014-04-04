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

" Only use php -l (php lint) for php files.
let g:syntastic_php_checkers=['php']

set foldmethod=indent
set foldcolumn=0
set foldminlines=3
" Use space, copied from http://vim.wikia.com/wiki/Folding
nnoremap <silent> <Space> @=(foldlevel('.')?'za':"\<Space>")<CR>
vnoremap <Space> zf
" Reminder, zi will toggle folding for the entire file.

let g:tagbar_type_php  = {
  \ 'kinds': [
      \ 'i:interfaces',
      \ 'c:classes',
      \ 'd:constant definitions',
      \ 'f:functions',
  \ ]
\ }
