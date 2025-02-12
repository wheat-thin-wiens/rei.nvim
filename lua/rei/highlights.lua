local M = {}

local config = require("rei.config")
local terminal = require("rei.terminal")
local editor_hl = require("rei.groups.editor")
local syntax_hl = require("rei.groups.syntax")

local integration_highlights = {
  indent_blankline = require("rei.groups.integrations.indent_blankline"),
}

local integrations = {}

for integration, enabled in pairs(config.integrations) do
  if enabled then
    local highlights = integration_highlights[integration]
    table.insert(integrations, { enabled = true, highlights = highlights })
  end
end

--- @param highlight table<string, table<boolean, table>>
local load_highlights = function(highlight)
  for name, settings in pairs(highlight) do
    vim.api.nvim_set_hl(0, name, settings)
  end
end

M.setup = function()
  load_highlights(editor_hl)
  load_highlights(syntax_hl)

  for _, plugin in ipairs(integrations) do
    if plugin.enabled then
      load_highlights(plugin.highlights)
    end
  end

  load_highlights(config.highlight_overrides)

  if config.terminal_colors then
    terminal.setup()
  end
end

return M
