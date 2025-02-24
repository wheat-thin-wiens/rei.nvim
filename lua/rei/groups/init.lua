local M = {}

local settings = require("rei.config").settings

--- @class base
--- @field hl_group table<string, table>

--- @class plugins
--- @field hl_group table<string, table<string, table>>

M.base = {
  require("rei.groups.editor"),
  require("rei.groups.syntax")
}

local function telescope_theme()
  if settings.integrations.telescope == true then
    return require("rei.groups.telescope").default
  else
    return require("rei.groups.telescope").borderless
  end
end

M.plugins = {
  gitsigns = require("rei.groups.gitsigns"),
  indent_blankline = require("rei.groups.indent_blankline"),
  lsp = require("rei.groups.lsp"),
  neotree = require("rei.groups.neotree"),
  render_markdown = require("rei.groups.render_markdown"),
  telescope = telescope_theme(),
  treesitter = require("rei.groups.treesitter"),
  which_key = require("rei.groups.which_key"),
}

return M
