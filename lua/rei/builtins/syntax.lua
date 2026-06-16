local config = require("rei.config").settings

local styles = vim.tbl_map(function(value)
  return setmetatable(value, {
    __add = function(a, b)
      return vim.tbl_extend("force", a, b)
    end,
  })
end, config.styles)

return {
  Boolean        = { fg = P.cyan } + styles.booleans,
  Character      = { fg = P.green },
  Comment        = { fg = P.subtext3 } + styles.comments,
  Conditional    = { fg = P.blue } + styles.loops,
  Constant       = { fg = P.orange },
  Debug          = { fg = P.cyan },
  Define         = { fg = P.red },
  diffAdded      = { fg = P.green },
  diffRemove     = { fg = P.red },
  diffChanged    = { fg = P.yellow },
  diffOldFile    = { fg = P.grey4 },
  diffNewFile    = { fg = P.fg },
  diffFile       = { fg = P.subtext4 },
  diffLine       = { fg = P.red },
  diffIndexLine  = { fg = P.purple },
  Error          = { fg = P.orange },
  Exception      = { fg = P.purple },
  Float          = { fg = P.red },
  Function       = { fg = P.purple } + styles.functions,
  htmlArg        = { fg = P.fg, italic = true },
  htmlEndTag     = { fg = P.subtext1 },
  htmlTitle      = { fg = P.fg },
  htmlTag        = { fg = P.subtext1 },
  htmlTagN       = { fg = P.subtext1 },
  htmlTagName    = { fg = P.red },
  Identifier     = { fg = P.fg } + styles.identifiers,
  Include        = { fg = P.purple },
  Keyword        = { fg = P.purple } + styles.keywords,
  Label          = { fg = P.purple },
  Macro          = { fg = P.red },
  Number         = { fg = P.red },
  Operator       = { fg = P.orange },
  PreProc        = { fg = P.red },
  PreCondit      = { fg = P.red },
  Repeat         = { fg = P.purple, } + styles.loops,
  Special        = { fg = P.blue },
  SpecialChar    = { fg = P.cyan },
  SpecialComment = { fg = P.subtext4 },
  Statement      = { fg = P.fg },
  StorageClass   = { fg = P.orange },
  String         = { fg = P.green },
  Structure      = { fg = P.red },
  Tag            = { fg = P.cyan },
  Todo           = { fg = P.cyan },
  Type           = { fg = P.red },
  Typedef        = { fg = P.red },
  Underlined     = { underline = true },
}
