" Y copies to the end of the line
nnoremap Y y$

" Centering the cursor
"" n-N = next-previous search, zz = center cursor on screen, zv = open fold if exist
nnoremap n nzzzv
nnoremap N Nzzzv
" Marks the point (mz), joins the lines (J) and gets back to the marked place (`z).
nnoremap J mzJ`z

" Undo break points (control_g+u)
inoremap , ,<c-g>u
inoremap . .<c-g>u
inoremap ! !<c-g>u
inoremap ? ?<c-g>u

" Moving text around
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '>+1<CR>gv=gv
inoremap <C-j> <esc>:m .+1<cr>==
inoremap <C-k> <esc>:m .-2<cr>==
nnoremap <leader>k :m .-2<CR>==
nnoremap <leader>j :m .+1<CR>==
