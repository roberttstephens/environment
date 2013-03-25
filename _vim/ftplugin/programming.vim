"automatically opens NERDTree when vim is opened. Then switches to the file
"that is opened.
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p

:highlight ExtraWhitespace ctermbg=red guibg=red
:match ExtraWhitespace /\s\+\%#\@<!$/
:set cc=80

""Remove all trailing white space with F5
:nnoremap <silent> <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>

" Search current directory for tags and work up the tree until one is found
set tags=./tags;/
syntax on
