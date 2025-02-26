local config = require("rei.config").settings

local styles = vim.tbl_map(function(value)
  return setmetatable(value, {
    __add = function(a, b)
      return vim.tbl_extend("force", a, b)
    end,
  })
end, config.styles)

return {
  -- Identifiers
  ["@variable"]               = { fg = P.fg } + styles.variables,
  ["@variable.builtin"]       = { fg = P.purple } + styles.variables,
  ["@variable.parameter"]     = { fg = P.bright_red } + styles.variables,

  ["@constant"]               = { link = "Constant" },
  ["@constant.builtin"]       = { fg = P.yellow },

  ["@module"]                 = { fg = P.purple },
  ["@label"]                  = { link = "Label" },

  -- Literals
  ["@string"]                 = { link = "String" },
  ["@string.documentation"]   = { fg = P.green } + styles.comments,
  ["@string.regexp"]          = { fg = P.purple },
  ["@string.escape"]          = { fg = P.yellow },
  ["@string.special"]         = { link = "Special" },
  ["@string.special.path"]    = { link = "Special" },
  ["@string.special.url"]     = { fg = P.bright_green, underline = true },

  ["@character"]              = { link = "Character" },
  ["@character.special"]      = { link = "SpecialChar" },

  ["@boolean"]                = { link = "Boolean" },
  ["@number"]                 = { link = "Number" },
  ["@number.float"]           = { link = "Float" },

   -- Types
  ["@type"]                   = { link = "Type" },
  ["@type.builtin"]           = { fg = P.yellow },
  ["@type.definition"]        = { link = "Type" },

  ["@attribute"]              = { fg = P.orange },
  ["@property"]               = { fg = P.purple },

  -- Functions
  ["@function"]               = { link = "Function" },
  ["@function.builtin"]       = { fg = P.bright_black } + styles.functions,
  ["@function.call"]          = { link = "Function" },

  ["@function.method"]        = { link = "Function" },
  ["@function.method.call"]   = { link = "Function" },

  ["@constructor"]            = { fg = P.bright_blue },
  ["@constructor.javascript"] = { fg = P.red },

  -- Keywords
  ["@keyword"]                = { link = "Keyword" },
  ["@keyword.modifier"]       = { link = "Keyword" },
  ["@keyword.word"]           = { link = "Keyword" },
  ["@keyword.repeat"]         = { link = "Repeat" },
  ["@keyword.conditional"]    = { link = "Conditional" },
  ["@keyword.function"]       = { link = "Function" },
  ["@keyword.operator"]       = { link = "Operator" },
  ["@keyword.import"]         = { link = "Include" } + styles.keywords,
  ["@keyword.clojure"]        = { fg = P.bright_red } + styles.keywords,

  -- Comments
  ["@comment"]                = { link = "Comment" },
  ["@comment.documentation"]  = { link = "Comment" },

  ["@namespace"]              = { fg = P.red, italic = true },
  ["@parameter"]              = { fg = P.fg },

  ["@punctuation"]            = { fg = P.subtext1 },
  ["@punctuation.delimiter"]  = { fg = P.subtext1 },
  ["@punctuation.bracket"]    = { fg = P.bright_red },
  ["@punctuation.special"]    = { fg = P.bright_green },

  ["@symbol"]                 = { fg = P.yellow },
  ["@tag"]                    = { fg = P.red },
  ["@tag.attribute"]          = { fg = P.cyan, italic = true },
  ["@tag.delimiter"]          = { fg = P.subtext1 },

  ["@text.underline"]         = { link = "Underlined" },
  ["@text.strong"]            = { bold = true },
  ["@text.strikethrough"]     = { strikethrough = true },
  ["@text.italic"]            = { italic = true },

  -- Markup
  ["@markup.heading"]               = { fg = P.fg, bold = true },
  ["@markup.heading.1"]             = { fg = P.blue, bold = true },
  ["@markup.heading.1.marker"]      = { link = "@comment" },
  ["@markup.heading.2"]             = { fg = P.blue, bold = true },
  ["@markup.heading.2.marker"]      = { link = "@comment" },
  ["@markup.heading.3"]             = { fg = P.blue, bold = true },
  ["@markup.heading.3.marker"]      = { link = "@comment" },
  ["@markup.heading.4"]             = { fg = P.blue, bold = true },
  ["@markup.heading.4.marker"]      = { link = "@comment" },
  ["@markup.heading.5"]             = { fg = P.blue, bold = true },
  ["@markup.heading.5.marker"]      = { link = "@comment" },
  ["@markup.heading.6"]             = { fg = P.blue, bold = true },
  ["@markup.heading.6.marker"]      = { link = "@comment" },
  ["@markup.link"]                  = { fg = P.subtext1 },
  ["@markup.link.label"]            = { fg = P.cyan },
  ["@markup.link.url"]              = { fg = P.purple },
  ["@markup.list"]                  = { fg = P.subtext4, bold = true },
  ["@markup.list.checked"]          = { fg = P.green },
  ["@markup.list.unchecked"]        = { fg = P.yellow },
  ["@markup.raw.block"]             = { fg = P.white },
  ["@markup.raw.delimiter"]         = { fg = P.subtext4 },
  ["@markup.quote"]                 = { fg = P.subtext1 },
  ["@markup.list.checked.markdown"] = { fg = P.green },
  ["@markup.underline"]             = { link = "@text.underline" },
  ["@markup.strong"]                = { link = "@text.strong" },
  ["@markup.italic"]                = { link = "@text.italic" },
  ["@markup.strikethrough"]         = { link = "@text.strikethrough" },
}
