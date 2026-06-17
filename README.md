# ppurpp

Purple colorscheme for Vim and Neovim.

## Install

Use any plugin manager and load `ppurpp` like a normal colorscheme.

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
