local M = {}

--- @class highlights
--- @field groups table<string, table>

local config = require("rei.config")
local terminal = require("rei.terminal")

local builtins = require("rei.builtins.init").builtins
local plugins = require("rei.plugins.init").plugins
local langs = require("rei.langs.init").langs

local loaded_integs = {}
local loaded_langs = {}

--- Sets highlight groups according to user specification
--- @param highlights table<string, table>
M.set_highlights = function(highlights)
  for name, hl in pairs(highlights) do
    vim.api.nvim_set_hl(0, name, hl)
  end
end

--- Set highlights
M.setup = function()
  for _, group in pairs(builtins) do
    M.set_highlights(group)
  end

  for plugin, enabled in pairs(config.integrations) do
    if enabled then
      table.insert(loaded_integs, plugin)
    end
  end

  for _, plugin in ipairs(loaded_integs) do
    M.set_highlights(plugins[plugin])
  end

  for lang, enabled in pairs(config.lang) do
    if enabled then
      table.insert(loaded_langs, lang)
    end
  end

  for _, lang in ipairs(loaded_langs) do
    M.set_highlights(langs[lang])
  end

  for group, setting in pairs(config.highlight_overrides) do
    vim.api.nvim_set_hl(0, group, setting)
  end

  if config.terminal_colors then
    terminal.setup()
  end
end

return M
