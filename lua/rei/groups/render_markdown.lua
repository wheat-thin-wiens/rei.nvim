local p = require("rei.palette").defaults

return {
  RenderMarkdownH1   = { fg = p.blue },
  RenderMarkdownH1Bg = { fg = p.blue, bg = p.dark_blue },
  RenderMarkdownH2   = { fg = p.purple },
  RenderMarkdownH2Bg = { fg = p.purple, bg = p.dark_purple },
  RenderMarkdownH3   = { fg = p.bright_green },
  RenderMarkdownH3Bg = { fg = p.bright_green, bg = p.dark_green },
  RenderMarkdownH4   = { fg = p.orange },
  RenderMarkdownH4Bg = { fg = p.orange, bg = p.dark_orange },
  RenderMarkdownH5   = { fg = p.yellow },
  RenderMarkdownH5Bg = { fg = p.yellow, bg = p.dark_yellow },
  RenderMarkdownH6   = { fg = p.cyan },
  RenderMarkdownH6Bg = { fg = p.cyan, bg = p.dark_cyan },
  RenderMarkdownCode = { bg = p.grey0 },
  RenderMarkdownLink = { fg = p.cyan },
}
