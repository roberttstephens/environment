"plugins: nerdtree, snipmate, xmledit, surround, taglist
"below are added by me
set number "displays number lines

"the below three set tabstops
set tabstop=2
set shiftwidth=2
set expandtab
set backspace=2

"the below four are for snipmates. It loads php and html snippets for php files
au BufRead *.php set ft=php.html
au BufNewFile *.php set ft=php.html

" For zend and drupal
au BufRead *.phtml set ft=php.html
au BufNewFile *.phtml set ft=php.html

" For drupal
au BufRead *.module set ft=php.html
au BufNewFile *.module set ft=php.html

au BufRead *.install set ft=php.html
au BufNewFile *.install set ft=php.html
" End for drupal

"autocmd FileType php set omnifunc=phpcomplete#CompletePHP
:filetype plugin on
:filetype indent on

"source general programming vim settings depending on file type
au Filetype python source ~/.vim/ftplugin/programming.vim
au Filetype php source ~/.vim/ftplugin/programming.vim
au Filetype sh source ~/.vim/ftplugin/programming.vim
au Filetype bash source ~/.vim/ftplugin/programming.vim
au Filetype c source ~/.vim/ftplugin/programming.vim


"makes all .swp files in /tmp
set directory=/tmp

" show that you're changing the paste mode
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode
