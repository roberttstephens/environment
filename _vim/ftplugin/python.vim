set shiftwidth=4
set tabstop=4
set expandtab

set foldmethod=indent
set foldcolumn=2
" Use space, copied from http://vim.wikia.com/wiki/Folding
nnoremap <silent> <Space> @=(foldlevel('.')?'za':"\<Space>")<CR>
vnoremap <Space> zf
" Reminder, zi will toggle folding for the entire file.
