# ppurpp

Purple colorscheme for Vim and Neovim.

## Install

- `vim.pack`
```lua
vim.pack.add({ "https://github.com/kurumihere/ppurpp" })
require("ppurpp").setup()
vim.cmd.colorscheme("ppurpp")
```

- `lazy.nvim`
```lua
{ "kurumihere/ppurpp", priority = 1000, config = true, opts = {} }
```

- `packer`
```lua
use { "kurumihere/ppurpp" }
```

- `vim-plug`
```vim
Plug 'kurumihere/ppurpp'
```

## Setup

```lua
require("ppurpp").setup({
  italic = {
    comments = true,
    strings = true,
    emphasis = true,
    folds = true,
    operators = false,
  },
  transparent_mode = false,
})
vim.cmd.colorscheme("ppurpp")
```

Use `vim.o.background = "light"` before `colorscheme ppurpp` for the light palette.

## Vim

```vim
let g:ppurpp_italic_comments = 1
let g:ppurpp_italic_strings = 1
let g:ppurpp_transparent_mode = 0
colorscheme ppurpp
```

## Options

- `transparent_mode`
- `contrast`
- `italic.comments`
- `italic.strings`
- `italic.emphasis`
- `italic.folds`
- `italic.operators`
