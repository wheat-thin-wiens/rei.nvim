local M = {}

P = require("rei.palette").defaults
Transparency = require("rei.utils").transparency_enabled()

--- @class plugins
--- @field hl_group table<string, table<string, table>>

M.plugins = {
  hrsh7th_cmp      = require("rei.plugins.hrsh7th_cmp"),
  gitsigns         = require("rei.plugins.gitsigns"),
  indent_blankline = require("rei.plugins.indent_blankline"),
  lazy             = require("rei.plugins.lazy_pkgmgr"),
  lsp              = require("rei.plugins.lsp"),
  mason            = require("rei.plugins.mason"),
  neogit           = require("rei.plugins.neogit"),
  neotree          = require("rei.plugins.neotree"),
  noice            = require("rei.plugins.noice"),
  notify           = require("rei.plugins.notify"),
  obsidian         = require("rei.plugins.obsidian"),
  render_markdown  = require("rei.plugins.render_markdown"),
  telescope        = require("rei.utils").telescope_extras(),
  treesitter       = require("rei.plugins.treesitter"),
  which_key        = require("rei.plugins.which_key"),
}

return M
