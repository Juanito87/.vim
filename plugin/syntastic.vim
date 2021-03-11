" syntastic options
"" Lets
let g:syntastic_always_populate_loc_list = 1                    " Always put detected error in the loclist
let g:syntastic_auto_jump = 1                                   " Jumps directly to first error on open
let g:syntastic_auto_loc_list = 1                               " Opens error windows if errors are detected
let g:syntastic_check_on_open = 1                               " Check for syntax errors on open
let g:syntastic_check_on_wq = 0                                 " Do not check files if quitting
let g:syntastic_error_symbol = "✗"                              " Mapping error symbol
let g:syntastic_warning_symbol = "⚠"                            " Mapping warning symbol
let g:syntastic_json_checkers = ["jsonlint"]                    " Setting json linter
let g:syntastic_yaml_checkers = ["jsyaml"]                      " Setting yaml linter
let g:syntastic_php_checkers = ["php","phpcs"]                  " Setting php linter
let g:syntastic_css_checkers = ["phpcs"]                        " Setting css linter
let g:syntastic_dockerfile_checkers = ["dockerfile-lint"]       " Setting dockerfile linter
let g:syntastic_html_checkers = ["w3"]                          " Setting html linter
let g:syntastic_python_checkers = ["pylint"]                    " Setting python linter
let g:syntastic_filetype_map = {"Dockerfile": "dockerfile"}     " Map dockerfiles with lower case as dockerfiles

"" Quickfix default layout
au FileType qf wincmd L                                         " Setting quickfix/loclist to the right side of the screen
au FileType qf vertical resize 80                               " Resize quickfix/loclist to 80 lines

"" Mappings for allowing quick jump to errors, closing and opening loclist
map <leader>n :lnext<CR>
map <leader>p :lprevious<CR>
map <leader>c :lclose<CR>
map <leader>o :lopen<bar><CR>
