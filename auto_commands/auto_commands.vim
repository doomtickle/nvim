augroup cmds
    autocmd!
    autocmd BufEnter *go :TSBufEnable go<CR>
    autocmd BufEnter *tsx,*ts :TSBufEnable tsx<CR>
    autocmd BufEnter *vim :TSBufEnable vim<CR>

    autocmd FileType css,scss let b:prettier_exec_cmd = "prettier-stylelint"
    autocmd FileType javascript,javascriptreact,typescript,typescriptreact,css,scss setlocal shiftwidth=2 softtabstop=2 expandtab 
    autocmd BufWritePre *.tsx,*.ts,*.jsx, EslintFixAll
augroup END
