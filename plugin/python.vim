" Setting programing tools
augroup runprog
    autocmd!
    autocmd BufRead,BufNewFile *.py nnoremap <F5> :exec '!python3' shellescape(@%, 1)<cr>
augroup END
augroup compprog
    autocmd!
    autocmd BufRead,BufNewFile *.py nnoremap <F6> :exec '!python3 -m' shellescape(@%, 1)<cr>
augroup END
