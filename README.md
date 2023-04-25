<div align="center">

# Arctic.nvim

A Neovim theme ported from the VSCode Dark+ theme

💁 Checkout [v2 branch](https://github.com/rockyzhang24/arctic.nvim/tree/v2) for **Dark Modern** theme, the successor of Dark+

<img width="1774" alt="Screen Shot 2022-07-07 at 13 51 44" src="https://user-images.githubusercontent.com/11582667/177871063-15dc3f88-8d2c-4c2f-8a92-65da8baad3e2.png">

</div>

## Introduction

I fell in love with VSCode Dark+ theme at first sight. At that time, I made up
my mind that I would port it to Neovim. Now, here it is. All the colors are
defined as strictly and precisely as possible, including the editor itself and
UI. I only adapted the plugins I was using, but presumably most plugins with
their default highlight settings should look harmonious. If you need a specific
support, please open an issue.

## New Version

VSCode is rolling out the successor of Dark+ that is called **Dark Modern**. Currently
only the UI theme colors have been updated and it is still in the experimental
stage. If you want to give it a shot, please checkout the `v2` branch.

## Installation

Using `vim-plug`

```vim
Plug 'rktjmp/lush.nvim'
Plug 'rockyzhang24/arctic.nvim'
```

Using `packer`

```lua
use {"rockyzhang24/arctic.nvim", requires = {"rktjmp/lush.nvim"}}
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

## Screenshots

**Coding**
<img width="1774" alt="Screen Shot 2022-07-07 at 14 03 54" src="https://user-images.githubusercontent.com/11582667/177871081-7e1e84b5-0456-491e-b3fc-2938eb4a1181.png">

**Fold preview (nvim-ufo)**
<img width="1864" alt="image" src="https://user-images.githubusercontent.com/11582667/186334727-5cda9c44-9a00-456d-bbef-f488001f8f26.png">
