local M = {}

local config = require("rei.config")

M.colorscheme = function()
  vim.cmd("hi clear")

  if vim.fn.exists("syntax_on") then
    vim.cmd("syntax reset")
  end

  vim.o.background = "dark"
  vim.o.termguicolors = true
  vim.g.colors_name = "rei"
  require("rei.highlights").setup()
end

M.setup = function(opts)
  opts = opts or config.defaults
end

return M
