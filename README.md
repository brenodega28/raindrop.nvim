# Raindrop.nvim

Color theme inspired by raindrop theme from ray.so.

## Installation

### Using [lazy.nvim](https://github.com/folke/lazy.nvim)

```lua
{
  "brenodega28/raindrop.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    vim.cmd([[colorscheme raindrop]])
  end,
}
```

### Using [packer.nvim](https://github.com/wbthomason/packer.nvim)

```lua
use {
  "brenodega28/raindrop.nvim",
  config = function()
    vim.cmd([[colorscheme raindrop]])
  end
}
```

### Using vim-plug

```vim
Plug 'brenodega28/raindrop.nvim'
```

Then add to your `init.vim` or `init.lua`:

```vim
colorscheme raindrop
```

## Manual Installation

Clone this repository into your Neovim configuration directory:

```bash
git clone https://github.com/brenodega28/raindrop.nvim ~/.config/nvim/pack/themes/start/raindrop.nvim
```

## Usage

Enable the colorscheme:

```vim
" Vim Script
colorscheme raindrop
```

```lua
-- Lua
vim.cmd([[colorscheme raindrop]])
```

## Color Palette

- **Background**: Deep dark blue-gray (`#1e2835`)
- **Foreground**: Light gray (`#e2e8f0`)
- **Keywords**: Cyan (`#67c9f0`)
- **Strings**: Orange (`#fb923c`)
- **Numbers**: Blue (`#60a5fa`)
- **Comments**: Muted gray-blue (`#64748b`)

## Features

- Full Treesitter support
- LSP diagnostic highlighting
- Git signs support
- Telescope integration
- Consistent color scheme across UI elements

## License

MIT
