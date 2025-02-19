# `rei.nvim`

Finally, a NeoVim theme that goes perfectly with your anime girl wallpaper.

![screenshot](/assets/screenshot.png)

# Install

## Lazy

```lua
return {
  "wheat-thin-wiens/rei.nvim",
  priority = 1000,
  opts = {}
}
```

# Configuration

```lua
opts = {
  styles = {
    comments = { italic = 'true' },
    keywords = {},
    identifiers = {},
    functions = { italic = 'true', bold = true },
    variables = {},
    booleans = {},
    loops = { italic = true }
  },
  integrations = {
    gitsigns = true,
    indent_blankline = true,
    lsp = true,
    neotree = true,
    render_markdown = true,
    treesitter = true,
    which_key = true
  },
  terminal_colors = true,
  highlight_overrides = {}
}
```

# Plugin Support

`rei.nvim` currently has support for the follow plugins:

- [Git Signs](https://github.com/lewis6991/gitsigns.nvim)
- [Indent Blankline](https://github.com/lukas-reineke/indent-blankline.nvim)
- [Lualine](https://github.com/nvim-lualine/lualine.nvim)
- [NeoVim LSP](https://github.com/neovim/nvim-lspconfig)
- [Neotree](https://github.com/nvim-neo-tree/neo-tree.nvim)
- [Render Markdown](https://github.com/MeanderingProgrammer/render-markdown.nvim)
- [treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [which-key](https://github.com/folke/which-key.nvim)

...with plans for more.

If you don't see your favorite plugin listed, go ahead and make a request and I can
see about getting it added.

# Extras

Included you will also find themes for the following programs:

- Starship
- WezTerm

# Special Thanks

- [oldworld.nvim](https://github.com/dgox16/oldworld.nvim)
- [catppuccin](https://github.com/catppuccin/nvim)

