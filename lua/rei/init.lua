local M = {}

M.colorscheme = function()
  vim.cmd("hi clear")
  if vim.fn.exists("syntax_on") then
    vim.cmd("syntax reset")
  end

  vim.o.background = "dark"
  vim.o.termguicolors = true
  vim.g.colorsname = "rei"
  require("rei.highlights").setup()
end

M.setup = require("rei.config").setup

return M
