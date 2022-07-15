" Initialize plugin system
call plug#begin()
Plug 'nvim-lua/plenary.nvim'
Plug 'prettier/vim-prettier', { 'do': 'yarn install --frozen-lockfile --production' }
Plug 'nvim-telescope/telescope.nvim'
Plug 'neovim/nvim-lspconfig'
Plug 'jiangmiao/auto-pairs'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'alvan/vim-closetag'
Plug 'hrsh7th/nvim-cmp'
Plug 'L3MON4D3/LuaSnip'
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'
Plug 'PhilRunninger/nerdtree-visual-selection'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-surround'
Plug 'ellisonleao/gruvbox.nvim'
Plug 'jxnblk/vim-mdx-js'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'APZelos/blamer.nvim'
Plug 'tpope/vim-commentary'
call plug#end()
colorscheme github
so ~/.config/nvim/sets.vim
lua require'lspconfig'.gopls.setup{}
lua require'lspconfig'.tsserver.setup{}
lua require'lspconfig'.eslint.setup{}

nnoremap - :NERDTreeToggle<CR>
nnoremap <leader>; :bn<CR>
nnoremap <leader>a :bp<CR>
nnoremap <leader>vs :vsplit<CR>
nnoremap <leader>q :wq!<cr>
nnoremap <leader>- :bd!<cr>
nnoremap <leader>b <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>f <cmd>lua require('telescope.builtin').git_files()<cr>
nnoremap <leader>w :w!<cr>
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-f> :NERDTreeFind<CR>


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

tnoremap <Esc> <C-\><C-n>

augroup cmds
    autocmd!
    autocmd BufEnter *go :TSBufEnable go<CR>
    autocmd BufEnter *tsx,*ts :TSBufEnable tsx<CR>
    autocmd BufEnter *vim :TSBufEnable vim<CR>

    autocmd FileType css,scss let b:prettier_exec_cmd = "prettier-stylelint"
    autocmd FileType javascript,javascriptreact,typescript,typescriptreact,css,scss setlocal shiftwidth=2 softtabstop=2 expandtab 
    autocmd BufWritePre *.tsx,*.ts,*.jsx,*.js EslintFixAll
augroup END

so ~/.config/nvim/minimal_init.lua

let g:netrw_browse_split=0
let g:netrw_banner=0
let g:netrw_winsize=5000

let g:NERDTreeWinPos = 'right'
let g:NERDTreeShowHidden = 1

let g:airline_theme='papercolor'
let g:airline#extensions#tabline#enabled = 1 
let g:airline_powerline_fonts = 1

let g:AutoPairsFlyMode = 0 

" vim-closetag
"
" filenames like *.xml, *.html, *.xhtml, ...
" These are the file extensions where this plugin is enabled.
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.tsx,*.jsx,*.vue,*.blade.php'

" filenames like *.xml, *.xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx,*.tsx'

" filetypes like xml, html, xhtml, ...
" These are the file types where this plugin is enabled.
let g:closetag_filetypes = 'html,xhtml,phtml'

" filetypes like xml, xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
let g:closetag_xhtml_filetypes = 'xhtml,jsx,tsx'

" integer value [0|1]
" This will make the list of non-closing tags case-sensitive (e.g. `<Link>` will be closed while `<link>` won't.)
"
let g:closetag_emptyTags_caseSensitive = 1

" dict
" Disables auto-close if not in a "valid" region (based on filetype)
"
let g:closetag_regions = {
    \ 'typescript.tsx': 'jsxRegion,tsxRegion',
    \ 'javascript.jsx': 'jsxRegion',
    \ 'typescriptreact': 'jsxRegion,tsxRegion',
    \ 'javascriptreact': 'jsxRegion',
    \ }

" Shortcut for closing tags, default is '>'
"
let g:closetag_shortcut = '>'

" Add > at current position without closing the current tag, default is ''
"
let g:closetag_close_shortcut = '>'

let g:blamer_enabled = 0
let g:blamer_prefix = ' '

" Prettier
let g:prettier#autoformat = 1
let g:prettier#autoformat_require_pragma = 0

