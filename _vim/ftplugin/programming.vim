set autoindent

:highlight charlimit ctermbg=red guibg=red
:highlight ExtraWhitespace ctermbg=red guibg=red
:match ExtraWhitespace /\s\+\%#\@<!$/
:match TODO /\%>80v.\+/

""Remove all trailing white space with F5
:nnoremap <silent> <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>

" search current directory for tags adn work up the tree until one is found
set tags=./tags;/
