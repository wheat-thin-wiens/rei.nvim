local p = require("rei.palette").defaults

return {
  RenderMarkdownH1   = { fg = p.blue },
  RenderMarkdownH1Bg = { fg = p.blue, bg = p.grey2 },
  RenderMarkdownH2   = { fg = p.purple },
  RenderMarkdownH2Bg = { fg = p.purple, bg = p.grey2 },
  RenderMarkdownH3   = { fg = p.green },
  RenderMarkdownH3Bg = { fg = p.green, bg = p.grey2 },
  RenderMarkdownH4   = { fg = p.orange },
  RenderMarkdownH4Bg = { fg = p.orange, bg = p.grey2 },
  RenderMarkdownH5   = { fg = p.yellow },
  RenderMarkdownH5Bg = { fg = p.yellow, bg = p.grey2 },
  RenderMarkdownH6   = { fg = p.cyan },
  RenderMarkdownH6Bg = { fg = p.cyan, bg = p.grey2 },
  RenderMarkdownCode = { bg = p.grey0 },
  RenderMarkdownLink = { fg = p.cyan },
}
