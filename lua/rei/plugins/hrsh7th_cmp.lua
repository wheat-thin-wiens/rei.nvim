local italic = require("rei.config").integrations.hrsh7th_cmp.italic_highlight

return {
  -- Pmenu                   = { bg = Transparency or P.bg },
  -- PmenuSel                = { fg = P.fg, bg = P.dark_black, italic = italic },

  CmpItemDefault          = { fg = P.blue, bg = Transparency or P.bg },
  CmpItemKind             = { fg = P.blue },
  CmpItemKindVariable     = { fg = P.fg },
  CmpItemKindFunction     = { link = "Function" },
  CmpItemKindText         = { link = "String" },
  CmpItemKindSnippet      = { fg = P.orange },
  CmpItemKindField        = { fg = P.purple },
  CmpItemKindProperty     = { fg = P.purple },
  CmpItemKindEnum         = { fg = P.red },

  CmpItemAbbrMatchDefault = { fg = P.blue },
  CmpItemAbbrMatch        = { fg = P.blue },
  CmpItemAbbrMatchFuzzy   = { fg = P.yellow },
}
