" plugins: pathogen, snipmate, surround, tagbar, ale

let g:ale_completion_enabled = 1
let g:ale_completion_autoimport = 1
set omnifunc=ale#completion#OmniFunc

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
" Neovim related settings
"------------------------------------------------------------

" Make backspace work the same as vim.
" See https://www.reddit.com/r/neovim/comments/2z538d/backspace_only_works_if_my_nvimrc_is_completely/
set backspace=indent,eol,start

" Disable the stupid mouse.
set mouse=

"------------------------------------------------------------
" File specific settings
"------------------------------------------------------------

:filetype plugin on
:filetype indent on

" Load php and html snippets for various suffixes, some drupal specific.
au BufRead,BufNewFile *.php,*.phtml,*.module,*.install,*.inc set ft=php
au BufRead,BufNewFile *.tsx set ft=typescript

" Use certain settings for programming languages,
" as opposed to system files or .txt.
au Filetype typescript,javascript,go,python,php,sh,bash,c,perl source ~/.vim/ftplugin/programming.vim

" TODO for some reason this doesn't work when placed in php.vim or programming.vim.
" Get this working in php.vim and remove it from below.
let g:snipMate = {}
let g:snipMate.scope_aliases = {}
let g:snipMate.scope_aliases['php'] = 'php'

if has("nvim")
    set inccommand=nosplit
endif

" Only lint when saving files.
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_enter = 0

if has("nvim")
  " Make escape work in the Neovim terminal.
  tnoremap <Esc> <C-\><C-n>

  "To use `ALT+{h,j,k,l}` to navigate windows from any mode:
  :tnoremap <A-h> <C-\><C-N><C-w>h
  :tnoremap <A-j> <C-\><C-N><C-w>j
  :tnoremap <A-k> <C-\><C-N><C-w>k
  :tnoremap <A-l> <C-\><C-N><C-w>l
  :inoremap <A-h> <C-\><C-N><C-w>h
  :inoremap <A-j> <C-\><C-N><C-w>j
  :inoremap <A-k> <C-\><C-N><C-w>k
  :inoremap <A-l> <C-\><C-N><C-w>l
  :nnoremap <A-h> <C-w>h
  :nnoremap <A-j> <C-w>j
  :nnoremap <A-k> <C-w>k
  :nnoremap <A-l> <C-w>l

  " Prefer Neovim terminal insert mode to normal mode.
  autocmd BufEnter term://* startinsert
endif
