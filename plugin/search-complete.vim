" Search and autocomplete config
set path+=**                                   " Search subfolders, allow autocomplete
set wildmode=longest,list,full                 " Enable autocomplete longest match first, then list all matches
set wildmenu                                   " Display matching files when we tab complete
set showmatch                                  " Show matching brackets
set ignorecase                                 " Do case insensitive matching
set smartcase                                  " Do smart case matching, ignorecase needs to be set
set incsearch                                  " Incremental search to highlight partial matches
set hlsearch                                   " Highlight partial search
set nohlsearch                                 " clear highlight after search is finished
set rtp+=~/.fzf                                " Setting fzf in runtime

" This is not is working but also gives an error
" Setting highlight to match theme
" function! s:update_highlights()
"     hi CursorLine ctermbg=none guibg=none
"     hi VertSplit ctermbg=none guibg=none
" endfunction
" autocmd User AirlineAfterTheme call s:update_highlights()
