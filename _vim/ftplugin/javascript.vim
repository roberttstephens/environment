" Indentation settings for using 2 spaces instead of tabs.
" Do not change 'tabstop' from its default value of 8 to see tabs clearly.
set shiftwidth=2
set backspace=2
set expandtab
set tabstop=2

" Use jshint.
let g:syntastic_js_checkers=['jshint']

"set foldmethod=indent
"set foldcolumn=2

" Use space, copied from http://vim.wikia.com/wiki/Folding
nnoremap <silent> <Space> @=(foldlevel('.')?'za':"\<Space>")<CR>
vnoremap <Space> zf
