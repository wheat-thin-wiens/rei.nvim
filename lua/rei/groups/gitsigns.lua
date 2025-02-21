local p = require("rei.palette").defaults

return {
  SignColumn = { fg = "None", bg = "None" },
  GitSignsAdd    = { fg = p.green, bg = "None" },
  GitSignsChange = { fg = p.yellow, bg = "None" },
  GitSignsDelete = { fg = p.red, bg = "None" }
}
