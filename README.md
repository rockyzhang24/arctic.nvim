<div align="center">

# Arctic.nvim

A Neovim theme ported from the VSCode Dark+ theme.

</div>

I fell in love with VSCode Dark+ theme at first sight. At that time, I made up
my mind that I would port it to Neovim. Now, here it is. All the colors are
defined as strictly and precisely as possible, including the editor itself and
UI. I only adapted the plugins I was using, but presumably most plugins with
their default highlight settings should look harmonious. If you need a specific
support, please open an issue.

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
