<div align="center">

# Arctic.nvim

A Neovim theme ported from the VSCode Dark Modern theme, the successor of the original Dark+

<img width="1774" alt="arctic-pic-main" src="https://user-images.githubusercontent.com/11582667/234493851-4bd7574a-0d43-4517-9572-225092ec96a5.png">

</div>

## Introduction

I fell in love with VSCode Dark+ theme at first sight. At that time, I made up
my mind that I would port it to Neovim. Now, I have not only implemented it (checkout
[main](https://github.com/rockyzhang24/arctic.nvim/tree/main) branch) but brought
its successor, **Dark Modern**. All the colors are
defined as strictly and precisely as possible, including the editor itself and
UI. I only adapted the plugins I was using, but presumably most plugins with
their default highlight settings should look harmonious. If you need a specific
support, please open an issue.

## Installation

### [vim-plug](https://github.com/junegunn/vim-plug)

```vim
Plug 'rktjmp/lush.nvim'
Plug 'rockyzhang24/arctic.nvim', { 'branch': 'v2' }
```

### [lazy.nvim](https://github.com/folke/lazy.nvim)

```lua
{
  "rockyzhang24/arctic.nvim",
  branch = "v2",
  dependencies = { "rktjmp/lush.nvim" }
}
```

## Usage

Simply set the colorscheme with the builtin command `:colorscheme`

```vim
" Vimscript
colorscheme arctic
```

```lua
-- Lua
vim.cmd("colorscheme arctic")
```

## Customization

This theme was built with `rktjmp/lush.nvim`, so the customization and is quite
easy. Just open `arctic.nvim/lua/lush_theme/arctic.lua` and execute `:Lushify`.
Then you can adjust colors or relink highlight groups to suit your taste, and it
gives you real time feedback. For details regarding how to use `lush.nvim`, see
[rktjmp/lush.nvim](https://github.com/rktjmp/lush.nvim).

## Showcases

**Coding**
<img width="1774" alt="arctic-coding" src="https://user-images.githubusercontent.com/11582667/234725670-98bf1e23-026a-4a88-ab5d-75ad0e324e25.png">

**Fold preview ([nvim-ufo](https://github.com/kevinhwang91/nvim-ufo))**
<img width="1774" alt="arctic-ufo" src="https://user-images.githubusercontent.com/11582667/234495173-3e4c8aca-fe73-4c7f-945e-48255b20a570.png">

**List all references in quickfix ([nvim-bqf](https://github.com/kevinhwang91/nvim-bqf))**
<img width="1774" alt="arctic-bqf" src="https://user-images.githubusercontent.com/11582667/234496084-f22abc98-fd3f-4a05-88ae-45b8b3de0926.png">

**Grep with preview ([telescope.nvim](https://github.com/nvim-telescope/telescope.nvim))**
<img width="1774" alt="arctic-telescope" src="https://user-images.githubusercontent.com/11582667/234496699-5b7a86c6-77f6-4387-86ed-40cd0f0ac702.png">
