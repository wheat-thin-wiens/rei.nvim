local p = require("rei.palette").defaults

return {
  normal = {
    a = { fg = p.bg, bg = p.red, gui = "bold" },
    b = { fg = p.fg, bg = p.bg },
    c = { fg = p.fg, bg = p.bg },
  },
  insert = { a = { fg = p.bg, bg = p.green, gui = "bold" } },
  command = { a = { fg = p.bg, bg = p.orange, gui = "bold" } },
  visual = { a = { fg = p.bg, bg = p.purple, gui = "bold" } },
  replace = { a = { fg = p.bg, bg = p.orange, gui = "bold" } },
  inactive = {
    a = { fg = p.grey4, bg = p.bg_dark, gui = "bold" },
    b = { fg = p.grey4, bg = p.bg_dark },
    c = { fg = p.grey4, bg = p.bg_dark },
  },
}
