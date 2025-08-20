local M = {}

M.lines = {
  SignColumn            = { fg = "None", bg = "None" },

  GitSignsAdd           = { fg = P.green, bg = "None" },
  GitSignsAddPreview    = { fg = P.green, bg = P.dark_green },

  GitSignsChange        = { fg = P.yellow, bg = "None" },

  GitSignsDelete        = { fg = P.red, bg = "None" },
  GitSignsDeletePreview = { fg = P.red, bg = P.dark_red }
}

M.blocks = {
  SignColumn            = { fg = "None", bg = "None" },

  GitSignsAdd           = { fg = P.green, bg = P.dark_green },
  GitSignsAddPreview    = { fg = P.green, bg = P.dark_green },

  GitSignsChange        = { fg = P.yellow, bg = P.dark_yellow },

  GitSignsDelete        = { fg = P.red, bg = P.dark_red },
  GitSignsDeletePreview = { fg = P.red, bg = P.dark_red }
}

return M
