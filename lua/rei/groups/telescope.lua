local M = {}

M.default = {
  TelescopeNormal = { link = "Normal" },
  TelescopeBorder = { fg = P.white, bg = Settings.transparency and P.none or P.bg },

  TelescopePromptNormal = { bg = Settings.transparency and P.none or P.bg_dark },
  TelescopePromptTitle = { fg = P.purple },
  TelescopePromptBorder = { fg = P.white, bg = Settings.transparency and P.none or P.bg_dark },
  TelescopePromptPrefix = { fg = P.purple },
  TelescopePromptCounter = { fg = P.purple },

  TelescopePreviewNormal = { link = "TelescopePromptNormal" },
  TelescopePreviewBorder = { link = "TelescopePromptBorder" },
  TelescopePreviewTitle = { link = "TelescopePromptTitle" },

  TelescopeResultsNormal = { link = "TelescopePromptNormal" },
  TelescopeResultsBorder = { link = "TelescopePromptBorder" },
  TelescopeResultsTitle = { link = "TelescopePromptTitle" },
}

M.borderless = {
  TelescopeNormal = { link = "Normal" },
  TelescopeBorder = { fg = P.white, bg = Settings.transparency and P.none or P.bg },

  TelescopePromptNormal = { bg = Settings.transparency and P.none or P.grey0 },
  TelescopePromptTitle = { fg = P.purple, bg = Settings.transparency and P.none or P.dark_purple },
  TelescopePromptBorder = { fg = P.grey0, bg = Settings.transparency and P.none or P.grey0 },
  TelescopePromptPrefix = { fg = P.purple },
  TelescopePromptCounter = { fg = P.purple },

  TelescopePreviewNormal = { bg = Settings.transparency and P.none or P.bg },
  TelescopePreviewBorder = { fg = P.bg, bg = Settings.transparency and P.none or P.bg },
  TelescopePreviewTitle = { fg = P.blue, bg = Settings.transparency and P.none or P.dark_blue },

  TelescopeResultsNormal = { bg = Settings.transparency and P.none or P.bg },
  TelescopeResultsBorder = { fg = P.bg, bg = Settings.transparency and P.none or P.bg },
  TelescopeResultsTitle = { fg = P.green, bg = Settings.transparency and P.none or P.dark_green },
  -- TelescopeResultsTitle = { fg = P.bg },
}

return M
