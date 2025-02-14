# `rei.nvim`

Finally, a NeoVim theme that goes perfectly with your anime girl wallpaper.

![screenshot]('.assets/screenshot.png')

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
    comments = {},
    keywords = {},
    identifiers = {},
    functions = {},
    booleans = {}
  },
  integrations = {},
  terminal_colors = true,
  highlight_overrides = {}
}
```

# Plugin Support

`rei.nvim` currently has support for the follow plugins:

- [Git Signs]()
- [Indent Blankline]()
- [NeoVim LSP]()
- [Neotree]()
- [Render Markdown]()

...with plans for more.

If you don't see your favorite plugin listed, go ahead and make a request and I can
see about getting it added.

# Extras

Included you will also find themes for the following programs:

- Starship
- WezTerm
