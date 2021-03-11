" Undo files
"" Checking and setting needed directories and permission
if !isdirectory($HOME."/.vim")
    call mkdir($HOME."/.vim", "", 0770)
endif
if !isdirectory($HOME."/.vim/undo-dir")
    call mkdir($HOME."/.vim/undo-dir", "", 0700)
endif

set undodir=~/.vim/undo-dir    " Setting dir for undo files
set undofile                   " Enabling undo files
set noswapfile                 " Disable swap files for vim files, undo will do the trick
