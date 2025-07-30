local M = {}

P = require("rei.palette").defaults
Transparency = require("rei.utils").transparency_enabled()

local utils = require("rei.utils")

--- @class builtins
--- @field hl_group table<string, table>

M.builtins = {
  editor = require("rei.builtins.editor"),
  syntax = require("rei.builtins.syntax"),
  contrast = utils.contrast_setting()
}

return M
