local M = {}

P = require("rei.palette").defaults
Transparency = require("rei.utils").transparency_enabled()

--- @class base
--- @field hl_group table<string, table>

--- @class plugins
--- @field hl_group table<string, table<string, table>>

M.base = {
  require("rei.groups.editor"),
  require("rei.groups.syntax")
}


M.plugins = {
  hrsh7th_cmp      = require("rei.groups.hrsh7th_cmp"),
  gitsigns         = require("rei.groups.gitsigns"),
  indent_blankline = require("rei.groups.indent_blankline"),
  lazy             = require("rei.groups.lazy_pkgmgr"),
  lsp              = require("rei.groups.lsp"),
  mason            = require("rei.groups.mason"),
  neogit           = require("rei.groups.neogit"),
  neotree          = require("rei.groups.neotree"),
  noice            = require("rei.groups.noice"),
  notify           = require("rei.groups.notify"),
  obsidian         = require("rei.groups.obsidian"),
  render_markdown  = require("rei.groups.render_markdown"),
  telescope        = require("rei.utils").telescope_theme(),
  treesitter       = require("rei.groups.treesitter"),
  which_key        = require("rei.groups.which_key"),
}

return M
