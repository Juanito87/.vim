" Airline config
set t_Co=256                                                                     " Set terminal color options
colorscheme gruvbox                                                              " Set color scheme to gruvbox plugin
set background=dark                                                              " Set dark mode
let g:airline_powerline_fonts = 1                                                " Set powerline symbols
let g:airline_skip_empty_sections = 1                                            " Set to skip empty sections in statusline
let g:airline#extensions#tmuxline#enabled = 0                                    " Set vim theme in tmux status line
let g:airline#extensions#branch#enabled = 1                                      " Setting airline to show branches
let g:airline#extensions#fugitiveline#enabled = 1                                " Enable buffer line integration with fugitive
let g:airline#extensions#fzf#enabled = 1                                         " Enable fzf integration
let g:airline#extensions#quickfix#quickfix_text = 'Quickfix'                     " Configure title for quickfix buffers
let g:airline#extensions#quickfix#location_text = 'Location'                     " Configure title for location buffers
let g:airline#extensions#syntastic#enabled = 1                                   " Configure syntastic integration
let g:airline_detect_spell=1                                                     " Detect spelling in airline
let g:airline#extensions#tabline#enabled = 1                                     " Set tabline
au WinLeave * set nocursorline nocursorcolumn                                    " clean highlight after leaving window
au WinEnter * set cursorline cursorcolumn                                        " set highlight when entering window
set cursorline cursorcolumn                                                      " set highlight for line and column
" set color for higlighted line/column
hi CursorLine cterm=NONE ctermbg=NONE ctermfg=white gui=NONE guibg=NONE guifg=white
hi VertSplit cterm=NONE ctermbg=NONE ctermfg=white gui=NONE guibg=NONE guifg=white
" packadd! dracula                                                               " Needed for dracula to start
" colorscheme dracula                                                            " Set color scheme to dracula plugin
