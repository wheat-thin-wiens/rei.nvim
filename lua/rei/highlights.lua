local M = {}

local base = require("rei.groups.init").base
local plugins = require("rei.groups.init").plugins

local loaded_ints = {}

M.set_highlights = function(highlights)
  for name, hl in pairs(highlights) do
    vim.api.nvim_set_hl(0, name, hl)
  end
end

M.setup = function(opts)
  M.set_highlights(base)

  for plugin, enabled in pairs(opts.integrations) do
    if enabled then
      table.insert(loaded_ints, plugin)
    end
  end

  for _, plugin in ipairs(loaded_ints) do
    M.set_highlights(plugins[plugin])
  end
end

return M
