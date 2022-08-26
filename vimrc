" Basic config
syntax enable                           " Enable syntax highlight using file extension
" The 2 following options remove the error for way to long lines, but performance is awful
set mmp=50000                           " Sets maxmempattern to 50000 to avoid issues with long lines in the repos while using syntax enable
"set redrawtime=5000                     " Sets redrawtime to 5000 to avoid issues with long lines in the repos while using syntax enable
set nocompatible                        " No compatibility with vi
set autoread                            " If the file is changed outside of vim, it's read again
set number relativenumber               " Turn hybrid line numbers on
set nu                                  " Shows current line number instead of 0
set formatoptions=qln                   " Sets format options when pasting, q= comments can be formatted, l= long lines are not broken, n= recognize numbered list when formatting test. :h fo-table for reference
set splitbelow splitright               " Splits open at the bottom and right
set viminfo+=n~/.vim/viminfo            " Set viminfo route
let mapleader =" "                      " Setting leader to space bar

" Display options
set showmode                            " Show the current mode in use in the last line
set showcmd                             " Shows commands in the las line
set laststatus=2                        " Shows status line for windows
set ruler                               " Show line and column number of the cursor
set wildmenu                            " Improved command line completion
set display+=lastline                   " Show lines that do not fit the screen
set signcolumn=number                   " Column to show special sings

" Expanding % functionality load matchit.vim, but only if the user hasn't installed a newer version
if !exists('g:loaded_matchit') && findfile('plugin/matchit.vim', &rtp) ==# ''
    runtime! macros/matchit.vim
endif

" Improving git integration
if executable('rg')
    let g:rg_derive_root='true'
endif

" Clipboard integration
set mouse=a                             " Enable mouse use in all modes (n, v, i, c and h) helps with visual selection
set clipboard=unnamed                   " Vim buffer to system clipboard (requieres vim compiled with +clipboard)
" set clipboard=unnamedplus               " Vim buffer to system clipboard (requieres vim compiled with +clipboard)

"" Integration for wsl and clipboard
if system('uname -r') =~ "Microsoft"
    augroup Yank
        autocmd!
        autocmd TextYankPost * :call system('clip.exe ',@")
    augroup END
endif

" Display different types of white spaces.
set list
if &listchars ==# 'eol:$'
    set listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+
endif

" Commenting out to avoid issues with work commits
" " Automatically deletes all trailing white space at end of file on save
" au BufWritePre * %s/\s\+$//e
" " Automatically deletes all trailing newlines at end of file on save
" au BufWritepre * %s/\n\+\%$//e
" " Automatically deletes all trailing escapes at end of file on save
" au BufWritepre * %s/\^\[\+\%$//e

" Enabling use of alias from vim
let $BASH_ENV = "~/.vim/.vim_bash_env"

" Sourcing additional config
"source ~/.vim/plugin/syntastic.vim"


" syntastic options
"" Lets
let g:syntastic_always_populate_loc_list = 1                    " Always put detected error in the loclist
let g:syntastic_auto_jump = 1                                   " Jumps directly to first error on open
let g:syntastic_auto_loc_list = 1                               " Opens error windows if errors are detected
let g:syntastic_check_on_open = 1                               " Check for syntax errors on open
let g:syntastic_check_on_wq = 0                                 " Do not check files if quitting
let g:syntastic_error_symbol = "✗"                              " Mapping error symbol
let g:syntastic_warning_symbol = "⚠"                            " Mapping warning symbol
let g:syntastic_sh_checkers = ['shellcheck', 'sh']              " Setting shell linter
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

"" Setting tf files as json
au BufRead,BufNewFile *.tf set filetype=json

"" Mapings for allowing quick jump to errors, closing and opening loclist
map <leader>n :lnext<CR>
map <leader>p :lprevious<CR>
map <leader>c :lclose<CR>
map <leader>o :lopen<bar><CR>

"" Maping to remove relative number from the session, mostly for copy
map <leader>r :set nornu nu!<CR>
map <leader>R :set nu rnu<CR>
