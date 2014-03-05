" plugins: pathogen, snipmate, surround, tagbar, syntastic

"
" Habits to enforce
" star when cursor is on a word to go to the next occurance.
" when typing a function name, variable, etc, use ctrl+n and vim will auto complete. what??
"

" Pathogen loads plugins in the ~/.vim/bundles directory.
execute pathogen#infect()

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
au BufRead,BufNewFile *.php,*.phtml,*.module,*.install,*.inc set ft=php

" Use certain settings for programming languages,
" as opposed to system files or .txt.
au Filetype javascript,go,python,php,sh,bash,c source ~/.vim/ftplugin/programming.vim

" TODO for some reason this doesn't work when placed in php.vim or programming.vim.
" Get this working in php.vim and remove it from below.
let g:snipMate = {}
let g:snipMate.scope_aliases = {}
let g:snipMate.scope_aliases['php'] = 'php'
