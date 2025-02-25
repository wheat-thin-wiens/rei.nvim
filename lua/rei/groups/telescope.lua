local M = {}

M.default = {
  TelescopeNormal        = { link = "Normal" },
  TelescopeBorder        = { fg = P.white, bg = P.bg },

  TelescopePromptNormal  = { bg = P.bg_dark },
  TelescopePromptTitle   = { fg = P.purple },
  TelescopePromptBorder  = { fg = P.white, bg = P.bg_dark },
  TelescopePromptPrefix  = { fg = P.purple },
  TelescopePromptCounter = { fg = P.purple },

  TelescopePreviewNormal = { link = "TelescopePromptNormal" },
  TelescopePreviewBorder = { link = "TelescopePromptBorder" },
  TelescopePreviewTitle  = { link = "TelescopePromptTitle" },

  TelescopeResultsNormal = { link = "TelescopePromptNormal" },
  TelescopeResultsBorder = { link = "TelescopePromptBorder" },
  TelescopeResultsTitle  = { link = "TelescopePromptTitle" },
}

M.borderless =  {
  TelescopeNormal        = { link = "Normal" },
  TelescopeBorder        = { fg = P.white, bg = P.bg },

  TelescopePromptNormal  = { bg = P.grey0 },
  TelescopePromptTitle   = { fg = P.purple, bg = P.dark_purple },
  TelescopePromptBorder  = { fg = P.grey0, bg = P.grey0 },
  TelescopePromptPrefix  = { fg = P.purple },
  TelescopePromptCounter = { fg = P.purple },

  TelescopePreviewNormal = { bg = P.bg },
  TelescopePreviewBorder = { fg = P.bg, bg = P.bg },
  TelescopePreviewTitle  = { fg = P.blue, bg = P.dark_blue },

  TelescopeResultsNormal = { bg = P.bg },
  TelescopeResultsBorder = { fg = P.bg, bg = P.bg },
  TelescopeResultsTitle  = { fg = P.green, bg = P.dark_green },
  -- TelescopeResultsTitle = { fg = P.bg },
}

return M
