" plugins: nerdtree, snipmate, surround, taglist

"------------------------------------------------------------
" General settings
"------------------------------------------------------------

" Display line numbers on the left
set number

" When opening a new line and no filetype-specific indenting is enabled, keep
" the same indent as the line you're currently on. Useful for READMEs, etc.
set autoindent

" Switch between paste and nopaste. Paste mode prevents auto indenting.
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>

" Show that you're changing the paste mode.
set showmode

" Makes all .swp files in /tmp to stay out of version control.
set directory=/tmp

" Create backups, keep them out of version control.
set backup
set backupdir=~/.vim/backup

"------------------------------------------------------------
" File specific settings
"------------------------------------------------------------

:filetype plugin on
:filetype indent on

" Load php and html snippets for various suffixes, some drupal specific.
au BufRead,BufNewFile *.html,*.php,*.phtml,*.module,*.install,*.inc set ft=php.html

au FileType php.html source ~/.vim/ftplugin/php.html.vim

" Use certain settings for programming languages,
" as opposed to system files or .txt.
au Filetype go,python,php,sh,bash,c source ~/.vim/ftplugin/programming.vim
