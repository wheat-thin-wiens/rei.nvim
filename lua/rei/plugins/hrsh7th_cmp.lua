local italic = require("rei.config").integrations.hrsh7th_cmp.italic_highlight

return {
  Pmenu               = { bg = Transparency or P.bg },
  PmenuSel            = { fg = P.white, bg = P.dark_black, italic = italic },

  CmpItemDefault      = { fg = P.blue, bg = Transparency or P.bg },
  CmpItemKindVariable = { fg = P.fg },
  CmpItemKindFunction = { fg = P.purple },
  CmpItemKindText     = { fg = P.green },
  CmpItemKindSnippet  = { fg = P.orange },
  CmpItemKindField    = { fg = P.purple },
  CmpItemKindProperty = { fg = P.purple },
  CmpItemKindEnum     = { fg = P.red },
}
