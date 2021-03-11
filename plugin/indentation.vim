" Indentation config
filetype plugin indent on                                                      " When indenting with '>', use 4 spaces width
set tabstop=4                                                                  " When indenting with '>', use 4 spaces width
set shiftwidth=4                                                               " On pressing tab, insert 4 spaces
set expandtab                                                                  " Source a global configuration file if available
set smarttab                                                                   " Inserts or delete shift width worth of space
set backspace=indent,eol,start                                                 " Allows backspace to delete normally in insert mode
set smartindent                                                                " Allows auto indent
au FileType * set formatoptions-=c formatoptions-=r formatoptions-=o           " Disables automatic commenting with text width, on newline, or inserting with o. This config needs to execute after all file type plugin instances
au BufReadPost * if &modifiable | retab | endif                                " Retab when opening the document, if the file is modifiable
