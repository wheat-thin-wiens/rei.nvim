local M = {}

local config = require("rei.config")

--- Sets highlight groups to default values
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

--- Calls config.setup to save user config
M.setup = config.setup

return M
