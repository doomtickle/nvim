# Daronatron NVim

A super opinionated starter to get up and running with NeoVim exactly like I do.

## Quickstart for Mac

1. `brew install neovim`
1. `mkdir $HOME/.config/nvim/ && cd $HOME/.config/nvim`
1. `git clone https://github.com/doomtickle/nvim .`
1. ```
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
   ```
1. `nvim +PlugInstall +qall`

---

## Summary

Daronatron Nvim is comprised of all the Neovim settings, themes, plugins, and keybindings that
I use in my daily workflow. It is meant as a reference or jumping-off-point for anyone looking to
have a modern, solid Neovim setup with little to no effort.

### Disclaimer

I have tried to comment all of the config files extensively so that you may remove anything that is
not to your taste. I frequently change things in here and am not always great about documenting them.

You have been warned.

To get the most out of this setup, you should familiarize yourself with the [Neovim docs](https://neovim.io/doc/)
as much as possible.

## init.vim

The first file that Neovim calls is `init.vim`. The `init.vim` in this repo sources other files in the directory.
This gives us some separation between the various parts of our vim config and allows us to maintain them easier.
We'll go over each of them below.

## plugins.vim

As its name implies, this is where we'll list any plugins that we'll want to include on startup.

This package assumes you will use [vim-plug](https://github.com/junegunn/vim-plug) as a plugin manager.
If you would like to change this, simply edit your `plugins.vim` to reflect the requirements of your package manager.

The plugins used in the current setup are:

- [plenary](https://github.com/nvim-lua/plenary.nvim)
- [vim-prettier](https://github.com/prettier/vim-prettier)
- [telescope](https://github.com/nvim-telescope/telescope.nvim)
- [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)
- [cmp](https://github.com/hrsh7th/nvim-cmp)
- [cmp-lsp](https://github.com/hrsh7th/cmp-nvim-lsp)
- [vim-closetag](https://github.com/alvan/vim-closetag)
- [auto-pairs](https://github.com/jiangmiao/auto-pairs)
- [luasnip](https://github.com/L3MON4D3/LuaSnip)
- [nerdtree](https://github.com/preservim/nerdtree)
- [nerdtree-git-plugin](https://github.com/Xuyuanp/nerdtree-git-plugin)
- [vim-devicons](https://github.com/ryanoasis/vim-devicons)
- [nerdtree-visual-selection](https://github.com/PhilRunninger/nerdtree-visual-selection)
- [vim-airline](https://github.com/vim-airline/vim-airline)
- [vim-airline-themes](https://github.com/vim-airline/vim-airline-themes)
- [vim-surround](https://github.com/tpope/vim-surround)
- [vim-mdx-js](https://github.com/jxnblk/vim-mdx-js)
- [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [blamer.nvim](https://github.com/APZelos/blamer.nvim)
- [vim-commentary](https://github.com/tpope/vim-commentary)

The configuration and keybindings for these plugins live in various places throughout the repo,
but for the most part have been taken directly from each plugin's documentation.

## sets.vim

Handles getting a sane starter with all the stuff like I like. This is also where I set the `<leader>` key to `<space>`.
To see what other options you have, visit the [Neovim docs](https://neovim.io/doc/) or type `:help nvim` from inside Neovim.

## setup.lua

Where I have the configs, scripts, and (some) keybindings for my plugins.

Some knowledge of lua is required.

## auto_commands/auto_commands.vim

Where you will create autocommands and groups of autocommands to run during certain events that neovim fires. The world is your oyster here. I've added a single group to this repo, but the idea is to group your autocommands by event and source them from higher up in the tree. More to come on this...

## variables.vim

Neovim allows you to set global variables that your plugins and scripts can look up at any time. I've separated this out and commented it heavily so you can see what's going on.

## keybindings.vim

TODO: Chart keybindings

## colorscheme

Currently comes with one colorscheme that I based off of [vim-colors-github](https://vimcolorschemes.com/acarapetis/vim-colors-github), with a few modifications.

### Changing the color scheme

To change the colorscheme, either create a new `your_theme_name.vim` file in the `colors/` directory or [download one](https://vimcolorschemes.com) from anywhere on the internet and change `colorscheme` variable to the filename of your new theme.
