"automatically opens NERDTree when vim is opened. Then switches to the file
"that is opened.
"" autocmd VimEnter * NERDTree
"" autocmd VimEnter * wincmd p

nnoremap <C-l> :TagbarToggle<CR>

set tags=tags;/

if exists('+colorcolumn')
  set colorcolumn=80
else
  au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)
endif

""Remove all trailing white space with F5
:nnoremap <silent> <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>

syntax on
set hlsearch

" Only use syntastic on the following languages.
let g:syntastic_mode_map = { 'mode': 'passive',
    \ 'active_filetypes': ['php','go','javascript','python'],
    \ 'passive_filetypes': [] }

colorscheme xoria256

:highlight ExtraWhitespace ctermbg=red guibg=red
:match ExtraWhitespace /\s\+\%#\@<!$/

" Should wrap comments at 80 chars, depending on formatoptions.
setlocal textwidth=80
