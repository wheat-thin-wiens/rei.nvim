local M = {}

local settings = require("rei.config").settings
local terminal = require("rei.terminal")

local base = require("rei.groups.init").base
local plugins = require("rei.groups.init").plugins

local loaded_ints = {}

--- @param highlights table
M.set_highlights = function(highlights)
  for name, hl in pairs(highlights) do
    vim.api.nvim_set_hl(0, name, hl)
  end
end

M.setup = function()
  for _, group in ipairs(base) do
    M.set_highlights(group)
  end

  for plugin, enabled in pairs(settings.integrations) do
    if enabled then
      table.insert(loaded_ints, plugin)
    end
  end

  for _, plugin in ipairs(loaded_ints) do
    M.set_highlights(plugins[plugin])
  end

  if settings.terminal_colors then
    terminal.setup()
  end
end

return M
