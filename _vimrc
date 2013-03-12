" plugins: nerdtree, snipmate, surround, taglist

" Display line numbers on the left
set number

function! FormatHtml()
  normal ggVGJ
  s/>\s*</>\r</g
  normal gg=G
endfunction

" When opening a new line and no filetype-specific indenting is enabled, keep
" the same indent as the line you're currently on. Useful for READMEs, etc.
set autoindent

" Indentation settings for using 2 spaces instead of tabs.
" Do not change 'tabstop' from its default value of 8 to see tabs clearly.
set shiftwidth=2
set backspace=2
set expandtab
set tabstop=2

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
au BufRead,BufNewFile *.php,*.phtml,*.module,*.install set ft=php.html

" Use certain settings for programming languages,
" as opposed to system files or .txt.
au Filetype python,php,sh,bash,c source ~/.vim/ftplugin/programming.vim
