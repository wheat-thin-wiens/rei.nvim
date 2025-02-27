local p = require("rei.palette").defaults
local transparency = require("rei.utils").transparency_enabled()

return {
  normal = {
    a = { fg = p.bg, bg = p.red, gui = "bold" },
    b = { fg = p.fg, bg = transparency or p.bg },
    c = { fg = p.fg, bg = transparency or p.bg },
  },
  insert = { a = { fg = p.bg, bg = p.green, gui = "bold" } },
  command = { a = { fg = p.bg, bg = p.orange, gui = "bold" } },
  visual = { a = { fg = p.bg, bg = p.purple, gui = "bold" } },
  replace = { a = { fg = p.bg, bg = p.orange, gui = "bold" } },
  inactive = {
    a = { fg = p.grey4, bg = transparency or p.bg_dark, gui = "bold" },
    b = { fg = p.grey4, bg = transparency or p.bg_dark },
    c = { fg = p.grey4, bg = transparency or p.bg_dark },
  },
}
