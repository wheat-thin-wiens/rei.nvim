local config = require("rei.config").settings
local p = require("rei.palette").defaults

local styles = vim.tbl_map(function(value)
  return setmetatable(value, {
    __add = function(a, b)
      return vim.tbl_extend("force", a, b)
    end,
  })
end, config.styles)

return {
  Comment        = { fg = p.subtext3 } + styles.comments,
  Constant       = { fg = p.orange },
  String         = { fg = p.green },
  Character      = { fg = p.green },
  Number         = { fg = p.red },
  Boolean        = { fg = p.cyan } + styles.booleans,
  Float          = { fg = p.red },
  Identifier     = { fg = p.fg } + styles.identifiers,
  Function       = { fg = p.purple } + styles.functions,
  Statement      = { fg = p.fg },
  Conditional    = { fg = p.blue } + styles.loops,
  Repeat         = { fg = p.purple, } + styles.loops,
  Label          = { fg = p.purple },
  Operator       = { fg = p.orange },
  Keyword        = { fg = p.purple } + styles.keywords,
  Exception      = { fg = p.purple },
  PreProc        = { fg = p.red },
  Include        = { fg = p.purple },
  Define         = { fg = p.red },
  Macro          = { fg = p.red },
  PreCondit      = { fg = p.red },
  Type           = { fg = p.red },
  StorageClass   = { fg = p.orange },
  Structure      = { fg = p.red },
  Typedef        = { fg = p.red },
  Special        = { fg = p.blue },
  SpecialChar    = { fg = p.cyan },
  Tag            = { fg = p.cyan },
  SpecialComment = { fg = p.subtext4 },
  Debug          = { fg = p.cyan },
  Underlined     = { underline = true },
  Error          = { fg = p.bright_red },
  Todo           = { fg = p.cyan },

  htmlArg = { fg = p.fg, italic = true },
  htmlEndTag = { fg = p.subtext1 },
  htmlTitle = { fg = p.fg },
  htmlTag = { fg = p.subtext1 },
  htmlTagN = { fg = p.subtext1 },
  htmlTagName = { fg = p.red },

  diffAdded = { fg = p.green },
  diffRemove = { fg = p.red },
  diffChanged = { fg = p.cyan },
  diffOldFile = { fg = p.grey4 },
  diffNewFile = { fg = p.fg },
  diffFile = { fg = p.subtext4 },
  diffLine = { fg = p.red },
  diffIndexLine = { fg = p.purple }
}
