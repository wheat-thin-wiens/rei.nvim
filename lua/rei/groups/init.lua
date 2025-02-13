local M = {}

--- @class base
--- @field hl_group table<string, table>

--- @class plugins
--- @field hl_group table<string, table<string, table>>

M.base = {
  require("rei.groups.editor"),
  require("rei.groups.syntax")
}

M.plugins = {
  gitsigns = require("rei.groups.gitsigns"),
  indent_blankline = require("rei.groups.indent_blankline"),
  lsp = require("rei.groups.lsp"),
  neotree = require("rei.groups.neotree"),
}

return M
