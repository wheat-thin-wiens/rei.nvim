local M = {}

M.default = {
  TelescopeNormal        = { link = "Normal" },
  TelescopeBorder        = { fg = P.white, bg = P.bg },

  TelescopePromptNormal  = { bg = Transparency or P.bg_dark },
  TelescopePromptTitle   = { fg = P.purple },
  TelescopePromptBorder  = { link = "FloatBorder" },
  TelescopePromptPrefix  = { fg = P.purple },
  TelescopePromptCounter = { fg = P.purple },

  TelescopeResultsNormal = { link = "TelescopePromptNormal" },
  TelescopeResultsTitle  = { link = "TelescopePromptTitle" },
  TelescopeResultsBorder = { link = "TelescopePromptBorder" },

  TelescopePreviewNormal = { link = "TelescopePromptNormal" },
  TelescopePreviewTitle  = { link = "TelescopePromptTitle" },
  TelescopePreviewBorder = { link = "TelescopePromptBorder" },
}

M.borderless = {
  TelescopeNormal        = { fg = P.fg, bg = P.bg },
  TelescopeBorder        = { fg = P.white, bg = "None" },

  TelescopePromptNormal  = { bg = P.grey0 },
  TelescopePromptTitle   = { fg = P.purple, bg = P.dark_purple },
  TelescopePromptBorder  = { fg = P.grey0, bg = P.grey0 },
  TelescopePromptPrefix  = { fg = P.purple },
  TelescopePromptCounter = { fg = P.purple },

  TelescopeResultsNormal = { link = "TelescopeNormal" },
  TelescopeResultsBorder = { fg = P.bg, bg = P.bg },
  TelescopeResultsTitle  = { fg = P.green, bg = P.dark_green },
  -- TelescopeResultsTitle = { fg = P.bg },

  TelescopePreviewNormal = { link = "TelescopeNormal" },
  TelescopePreviewBorder = { fg = P.bg, bg =  P.bg },
  TelescopePreviewTitle  = { fg = P.blue, bg = P.dark_blue },

}

return M
