" Basic config
syntax enable                           " Enable syntax highlight using file extension
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
