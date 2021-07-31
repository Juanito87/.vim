" Netrw config
"" Toggle function to work more like nerdtree
function! ToggleVimExplorer()
    if exists("t:expl_buf_num")
        let expl_win_num = bufwinnr(t:expl_buf_num)
        if expl_win_num != -1
            let cur_win_nr = winnr()
            exec expl_win_num . 'wincmd w'
            close
            exec cur_win_nr . 'wincmd w'
            unlet t:expl_buf_num
        else
            unlet t:expl_buf_num
        endif
    else
        exec '1wincmd w'
        Lexplore
        let t:expl_buf_num = bufnr("%")
    endif
endfunction

"" Remap for toggle
nmap <leader>e :call ToggleVimExplorer()<cr>

"" Set netrw for all calls to netrw
""" Default
function! NetrwMapping()
    let g:netrw_banner = 0                " Remove the banner at the top
    let g:netrw_liststyle = 3             " Default directory view. Cycle with i
    let g:netrw_browse_split = 0          " New files are opened in a new vertical
    let g:netrw_altv = 1                  " Files are opened to the right of netrw
    let g:netrw_chgwin = 2                " Files are opened without closing netrw
    let g:netrw_winsize = 25              " Window size
    let g:netrw_sort_sequence = '[\/]$,*' " Default config
    let g:netrw_list_hide= '.*.swp$,
                \ *.pyc$,
                \ *.log$,
                \ *.o$,
                \ *.xmi$,
                \ *.swp$,
                \ *.bak$,
                \ *.pyc$,
                \ *.class$,
                \ *.jar$,
                \ *.war$,
                \ *__pycache__*'
endfunction

""" Auto call default netrw layout
augroup netrw_mapping
    autocmd!
    autocmd filetype netrw call NetrwMapping()
augroup END

" Mappings

"" Adding remap for to manage splits.
""" Moving
map <silent> <C-h> WinMoveLeft
map <silent> <C-j> WinMoveDown
map <silent> <C-k> WinMoveUp
map <silent> <C-l> WinMoveRight

""" Closing
nnoremap <C-C> <C-W><C-C>

""" Resizing
if bufwinnr(1)
    map <S-K> <C-W>+
    map <S-J> <C-W>-
    map <S-H> <c-w>>
    map <S-L> <c-w><
endif

" Move to the window in the direction shown, or create a new window
function s:WinMove(key)
    let t:curwin = winnr()
    exec "wincmd ".a:key
    if (t:curwin == winnr())
        if (match(a:key,'<esc>'))
            wincmd v
        else
            wincmd s
        endif
        exec "wincmd ".a:key
    endif
endfunction

" Call to function definition
" Navigate to pane to the left, or create a new pane
nnoremap WinMoveLeft :<C-U>call <SID>WinMove('h')<CR>
" Navigate to pane to below, or create a new pane
nnoremap WinMoveDown :<C-U>call <SID>WinMove('j')<CR>
" Navigate to pane above, or create a new pane
nnoremap WinMoveUp :<C-U>call <SID>WinMove('k')<CR>
" Navigate to pane to the right, or create a new pane
nnoremap WinMoveRight :<C-U>call <SID>WinMove('l')<CR>
