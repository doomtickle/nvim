so ~/.config/nvim/plugins.vim
so ~/.config/nvim/sets.vim
so ~/.config/nvim/keybindings.vim
so ~/.config/nvim/minimal_init.lua

colorscheme github

augroup cmds
    autocmd!
    autocmd BufEnter *go :TSBufEnable go<CR>
    autocmd BufEnter *tsx,*ts :TSBufEnable tsx<CR>
    autocmd BufEnter *vim :TSBufEnable vim<CR>

    autocmd FileType css,scss let b:prettier_exec_cmd = "prettier-stylelint"
    autocmd FileType javascript,javascriptreact,typescript,typescriptreact,css,scss setlocal shiftwidth=2 softtabstop=2 expandtab 
    autocmd BufWritePre *.tsx,*.ts,*.jsx,*.js EslintFixAll
augroup END


let g:netrw_browse_split=0
let g:netrw_banner=0

let g:NERDTreeWinPos = 'right'
let g:NERDTreeShowHidden = 1
let g:NERDTreeWinSize = 60 

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

