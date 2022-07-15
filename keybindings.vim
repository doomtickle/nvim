" Navigate buffers
nnoremap <leader>; :bn<CR>
nnoremap <leader>a :bp<CR>
" Split screen
nnoremap <leader>vs :vsplit<CR>
"Quick save
nnoremap <leader>w :w!<cr>
" Quick save and exit
nnoremap <leader>q :wq!<cr>
" Delete current buffer
nnoremap <leader>- :bd!<cr>

" Telescope
" Show open buffers in telescope
nnoremap <leader>b <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>f <cmd>lua require('telescope.builtin').git_files()<cr>

" NERDTree
" Toggle NERDTree and find current location in the filetree
nnoremap - :NERDTreeToggle<CR>
" Attempt to find file in current buffer inside NERDTree
nnoremap <C-f> :NERDTreeFind<CR>

" Navigate splits easier
:tnoremap <C-h> <C-\><C-N><C-w>h
:tnoremap <C-j> <C-\><C-N><C-w>j
:tnoremap <C-k> <C-\><C-N><C-w>k
:tnoremap <C-l> <C-\><C-N><C-w>l
:inoremap <C-h> <C-\><C-N><C-w>h
:inoremap <C-j> <C-\><C-N><C-w>j
:inoremap <C-k> <C-\><C-N><C-w>k
:inoremap <C-l> <C-\><C-N><C-w>l
:nnoremap <C-h> <C-w>h
:nnoremap <C-j> <C-w>j
:nnoremap <C-k> <C-w>k
:nnoremap <C-l> <C-w>l
