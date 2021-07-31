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
