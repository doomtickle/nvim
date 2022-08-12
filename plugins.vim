" Initialize plugin system
call plug#begin()
Plug 'nvim-lua/plenary.nvim'
Plug 'prettier/vim-prettier', { 'do': 'yarn install --frozen-lockfile --production' }
Plug 'nvim-telescope/telescope.nvim'
Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/nvim-lsp-installer'
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
