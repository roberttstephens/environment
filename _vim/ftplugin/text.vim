function! Translate()

    let word = expand("<cword>")
    echom system('translate_de_en ' . word)

endfunction

command De call Translate()
