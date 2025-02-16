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
  -- Identifiers
  ["@variable"]           = { fg = p.fg } + styles.variables,
  ["@variable.builtin"]   = { fg = p.purple } + styles.variables,
  ["@variable.parameter"] = { fg = p.bright_red } + styles.variables,

  ["@constant"]         = { link = "Constant" },
  ["@constant.builtin"] = { fg = p.yellow },

  ["@module"] = { fg = p.purple },
  ["@label"] = { link = "Label" },

  -- Literals
  ["@string"] = { link = "String" },
  ["@string.documentation"] = { fg = p.green } + styles.comments,
  ["@string.regexp"] = { fg = p.purple },
  ["@string.escape"] = { fg = p.yellow },
  ["@string.special"] = { link = "Special" },
  ["@string.special.path"] = { link = "Special" },
  ["@string.special.url"] = { fg = p.bright_green, underline = true },

  ["@character"] = { link = "Character" },
  ["@character.special"] = { link = "SpecialChar" },

  ["@boolean"] = { link = "Boolean" },
  ["@number"] = { link = "Number" },
  ["@number.float"] = { link = "Float" },

   -- Types
  ["@type"] = { link = "Type" },
  ["@type.builtin"] = { fg = p.yellow },
  ["@type.definition"] = { link = "Type" },

  ["@attribute"] = { fg = p.orange },
  ["@property"] = { fg = p.purple },

  -- Functions
  ["@function"] = { link = "Function" },
  ["@function.builtin"] = { fg = p.yellow } + styles.functions,
  ["@function.call"] = { link = "Function" },

  ["@function.method"] = { link = "Function" },
  ["@function.method.call"] = { link = "Function" },

  ["@constructor"] = { fg = p.bright_blue },
  ["@constructor.javascript"] = { fg = p.red },

  -- Keywords
  ["@keyword"] = { link = "Keyword" },
  ["@keyword.modifier"] = { link = "Keyword" },
  ["@keyword.word"] = { link = "Keyword" },
  ["@keyword.repeat"] = { link = "Repeat" },
  ["@keyword.conditional"] = { link = "Conditional" },
  ["@keyword.function"] = { link = "Function" },
  ["@keyword.operator"] = { link = "Operator" },
  ["@keyword.import"] = { link = "Include" } + styles.keywords,
  ["@keyword.clojure"] = { fg = p.bright_red } + styles.keywords,

  -- Comments
  ["@comment"] = { link = "Comment" },
  ["@comment.documentation"] = { link = "Comment" },

  ["@namespace"] = { fg = p.red, italic = true },
  ["@parameter"] = { fg = p.fg },

  ["@punctuation"] = { fg = p.subtext1 },
  ["@punctuation.delimiter"] = { fg = p.subtext1 },
  ["@punctuation.bracket"] = { fg = p.subtext3 },
  ["@punctuation.special"] = { fg = p.subtext1 },

  ["@symbol"] = { fg = p.yellow },
  ["@tag"] = { fg = p.red },
  ["@tag.attribute"] = { fg = p.cyan, italic = true },
  ["@tag.delimiter"] = { fg = p.subtext1 },

  ["@text.underline"] = { link = "Underlined" },
  ["@text.strong"] = { bold = true },
  ["@text.strikethrough"] = { strikethrough = true },
  ["@text.italic"] = { italic = true },

  -- Markup
  ["@markup.heading"] = { fg = p.fg, bold = true },
  ["@markup.heading.1"] = { fg = p.blue, bold = true },
  ["@markup.heading.1.marker"] = { link = "@comment" },
  ["@markup.heading.2"] = { fg = p.blue, bold = true },
  ["@markup.heading.2.marker"] = { link = "@comment" },
  ["@markup.heading.3"] = { fg = p.blue, bold = true },
  ["@markup.heading.3.marker"] = { link = "@comment" },
  ["@markup.heading.4"] = { fg = p.blue, bold = true },
  ["@markup.heading.4.marker"] = { link = "@comment" },
  ["@markup.heading.5"] = { fg = p.blue, bold = true },
  ["@markup.heading.5.marker"] = { link = "@comment" },
  ["@markup.heading.6"] = { fg = p.blue, bold = true },
  ["@markup.heading.6.marker"] = { link = "@comment" },
  ["@markup.link"] = { fg = p.subtext1 },
  ["@markup.link.label"] = { fg = p.cyan },
  ["@markup.link.url"] = { fg = p.purple },
  ["@markup.list"] = { fg = p.subtext4, bold = true },
  ["@markup.list.checked"] = { fg = p.subtext4 },
  ["@markup.list.unchecked"] = { fg = p.subtext4 },
  ["@markup.raw.block"] = { fg = p.subtext4 },
  ["@markup.raw.delimiter"] = { fg = p.subtext4 },
  ["@markup.quote"] = { fg = p.subtext1 },
  ["@markup.list.checked.markdown"] = { fg = p.green },
  ["@markup.underline"] = { link = "@text.underline" },
  ["@markup.strong"] = { link = "@text.strong" },
  ["@markup.italic"] = { link = "@text.italic" },
  ["@markup.strikethrough"] = { link = "@text.strikethrough" },
}
