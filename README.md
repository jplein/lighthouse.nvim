# lighthouse.nvim

A Neovim colorscheme with dark and light variants. A single colorscheme holds both palettes and picks the active one from `background`, so switching is just `:set background=light` / `:set background=dark`.

Requires a true-color terminal (`termguicolors`) and a reasonably recent Neovim (0.9+).

## Installation

### [lazy.nvim](https://github.com/folke/lazy.nvim)

```lua
{
  "jplein/lighthouse.nvim",
  lazy = false,    -- load during startup, it's the main colorscheme
  priority = 1000, -- load before other plugins
  config = function()
    vim.o.background = "dark" -- or "light"
    vim.cmd.colorscheme("lighthouse")
  end,
}
```

### [packer.nvim](https://github.com/wbthomason/packer.nvim)

```lua
use("jplein/lighthouse.nvim")
```

### [vim-plug](https://github.com/junegunn/vim-plug)

```vim
Plug 'jplein/lighthouse.nvim'
```

## Usage

Pick a variant with `background`, then load the colorscheme:

```lua
vim.o.background = "light" -- or "dark"
vim.cmd.colorscheme("lighthouse")
```

Both variants live in the same colorscheme, so you can flip between them at any time in a running session — no reload needed:

```vim
:set background=light
:set background=dark
```

## Variants

| `background` | Variant          |
| ------------ | ---------------- |
| `dark`       | Lighthouse Dark  |
| `light`      | Lighthouse Light |

## License

MIT — see [LICENSE](LICENSE).
