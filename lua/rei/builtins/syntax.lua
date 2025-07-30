local config = require("rei.config").settings

local styles = vim.tbl_map(function(value)
  return setmetatable(value, {
    __add = function(a, b)
      return vim.tbl_extend("force", a, b)
    end,
  })
end, config.styles)

return {
  Comment        = { fg = P.subtext3 } + styles.comments,
  Constant       = { fg = P.orange },
  String         = { fg = P.green },
  Character      = { fg = P.green },
  Number         = { fg = P.red },
  Boolean        = { fg = P.cyan } + styles.booleans,
  Float          = { fg = P.red },
  Identifier     = { fg = P.fg } + styles.identifiers,
  Function       = { fg = P.purple } + styles.functions,
  Statement      = { fg = P.fg },
  Conditional    = { fg = P.blue } + styles.loops,
  Repeat         = { fg = P.purple, } + styles.loops,
  Label          = { fg = P.purple },
  Operator       = { fg = P.orange },
  Keyword        = { fg = P.purple } + styles.keywords,
  Exception      = { fg = P.purple },
  PreProc        = { fg = P.red },
  Include        = { fg = P.purple },
  Define         = { fg = P.red },
  Macro          = { fg = P.red },
  PreCondit      = { fg = P.red },
  Type           = { fg = P.red },
  StorageClass   = { fg = P.orange },
  Structure      = { fg = P.red },
  Typedef        = { fg = P.red },
  Special        = { fg = P.blue },
  SpecialChar    = { fg = P.cyan },
  Tag            = { fg = P.cyan },
  SpecialComment = { fg = P.subtext4 },
  Debug          = { fg = P.cyan },
  Underlined     = { underline = true },
  Error          = { fg = P.orange },
  Todo           = { fg = P.cyan },

  htmlArg = { fg = P.fg, italic = true },
  htmlEndTag = { fg = P.subtext1 },
  htmlTitle = { fg = P.fg },
  htmlTag = { fg = P.subtext1 },
  htmlTagN = { fg = P.subtext1 },
  htmlTagName = { fg = P.red },

  diffAdded = { fg = P.green },
  diffRemove = { fg = P.red },
  diffChanged = { fg = P.yellow },
  diffOldFile = { fg = P.grey4 },
  diffNewFile = { fg = P.fg },
  diffFile = { fg = P.subtext4 },
  diffLine = { fg = P.red },
  diffIndexLine = { fg = P.purple }
}
