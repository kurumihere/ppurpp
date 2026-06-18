# ppurpp

My personal colorscheme for vim/neovim and more.

## Install

<details open>
<summary><code>vim.pack</code></summary>

```lua
vim.pack.add({ "https://github.com/kurumihere/ppurpp" })
require("ppurpp").setup()
vim.cmd.colorscheme("ppurpp")
```

</details>

<details>
<summary><code>lazy.nvim</code></summary>

```lua
{ "kurumihere/ppurpp", priority = 1000, config = true, opts = {} }
```

</details>

<details>
<summary><code>packer</code></summary>

```lua
use { "kurumihere/ppurpp" }
```

</details>

<details>
<summary><code>vim-plug</code></summary>

```vim
Plug 'kurumihere/ppurpp'
```

</details>

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

## Ports

<details>
<summary>Desktop ports</summary>

- `alacritty`
- `dunst`
- `i3`
- `polybar`
- `rofi`

</details>

## Options

- `transparent_mode`
- `contrast`
- `italic.comments`
- `italic.strings`
- `italic.emphasis`
- `italic.folds`
- `italic.operators`
