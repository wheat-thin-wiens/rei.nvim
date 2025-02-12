local M = {}

M.base = {
  editor = require("rei.groups.editor"),
  syntax = require("rei.groups.syntax")
}

M.plugins = {
  lsp = require("rei.groups.lsp")
}

return M
