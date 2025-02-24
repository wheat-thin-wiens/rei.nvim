local M = {}

local p = require("rei.palette").defaults

M.default = {
  TelescopeNormal = { link = "Normal" },
  TelescopeBorder = { fg = p.white, bg = p.bg },

  TelescopePromptNormal = { bg = p.bg_dark },
  TelescopePromptTitle = { fg = p.purple },
  TelescopePromptBorder = { fg = p.white, bg = p.bg_dark },
  TelescopePromptPrefix = { fg = p.purple },
  TelescopePromptCounter = { fg = p.purple },

  TelescopePreviewNormal = { link = "TelescopePromptNormal" },
  TelescopePreviewBorder = { link = "TelescopePromptBorder" },
  TelescopePreviewTitle = { link = "TelescopePromptTitle" },

  TelescopeResultsNormal = { link = "TelescopePromptNormal" },
  TelescopeResultsBorder = { link = "TelescopePromptBorder" },
  TelescopeResultsTitle = { link = "TelescopePromptTitle" },
}

M.borderless =  {
  TelescopeNormal = { link = "Normal" },
  TelescopeBorder = { fg = p.white, bg = p.bg },

  TelescopePromptNormal = { bg = p.grey0 },
  TelescopePromptTitle = { fg = p.purple, bg = p.dark_purple },
  TelescopePromptBorder = { fg = p.grey0, bg = p.grey0 },
  TelescopePromptPrefix = { fg = p.purple },
  TelescopePromptCounter = { fg = p.purple },

  TelescopePreviewNormal = { bg = p.bg },
  TelescopePreviewBorder = { fg = p.bg, bg = p.bg },
  TelescopePreviewTitle = { fg = p.blue, bg = p.dark_blue },

  TelescopeResultsNormal = { bg = p.bg },
  TelescopeResultsBorder = { fg = p.bg, bg = p.bg },
  TelescopeResultsTitle = { fg = p.bg },
}

return M
