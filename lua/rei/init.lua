local M = {}
local config = require("rei.config")

M.colorscheme = function()
  vim.cmd("hi clear")
  if vim.fn.exists("syntax_on") then
    vim.cmd("syntax reset")
  end

  vim.o.background = "dark"
  vim.o.termguicolors = true
  vim.g.colorsname = "rei"
end

M.setup = function(opts)
  opts = opts or config.defaults

  for k, v in pairs(opts) do
    if k == "integrations" then
      for int, en in pairs(v) do
      end
    end
  end
end

return M
