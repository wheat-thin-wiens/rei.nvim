local M = {}

P = require("rei.palette").defaults
Transparency = require("rei.utils").transparency_enabled()

M.lang = {
  go = require("rei.lang.go"),
  ts = require("rei.lang.ts"),
}

return M
