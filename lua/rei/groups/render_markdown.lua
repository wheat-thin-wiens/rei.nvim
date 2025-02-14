local p = require("rei.palette").defaults

return {
  RenderMarkdownH1   = { fg = p.blue },
  RenderMarkdownH1Bg = { fg = p.blue, bg = nil },
  RenderMarkdownH2   = { fg = p.red },
  RenderMarkdownH2Bg = { fg = p.red, bg = nil },
  RenderMarkdownH3   = { fg = p.green },
  RenderMarkdownH3Bg = { fg = p.green, bg = nil },
  RenderMarkdownH4   = { fg = p.orange },
  RenderMarkdownH4Bg = { fg = p.orange, bg = nil },
  RenderMarkdownH5   = { fg = p.yellow },
  RenderMarkdownH5Bg = { fg = p.yellow, bg = nil },
  RenderMarkdownH6   = { fg = p.cyan },
  RenderMarkdownH6Bg = { fg = p.cyan, bg = nil },
  RenderMarkdownCode = { bg = p.grey0 },
  RenderMarkdownLink = { fg = p.yellow },
}
