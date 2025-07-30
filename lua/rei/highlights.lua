local M = {}

--- @class highlights
--- @field groups table<string, table>

local config = require("rei.config")
local terminal = require("rei.terminal")

local builtins = require("rei.builtins.init").builtins
local plugins = require("rei.plugins.init").plugins
local langs = require("rei.lang.init").lang

local loaded_ints = {}

--- Sets highlight groups according to user specification
--- @param highlights table<string, table>
M.set_highlights = function(highlights)
  for name, hl in pairs(highlights) do
    vim.api.nvim_set_hl(0, name, hl)
  end
end

M.setup = function()
  for _, group in pairs(builtins) do
    M.set_highlights(group)
  end

  for plugin, enabled in pairs(config.integrations) do
    if enabled then
      table.insert(loaded_ints, plugin)
    end
  end

  for _, plugin in ipairs(loaded_ints) do
    M.set_highlights(plugins[plugin])
  end

  for _, group in pairs(langs) do
    M.set_highlights(group)
  end

  for group, setting in pairs(config.highlight_overrides) do
    vim.api.nvim_set_hl(0, group, setting)
  end

  if config.terminal_colors then
    terminal.setup()
  end
end

return M
