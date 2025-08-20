local M = {}

P = require("rei.palette").defaults
Transparency = require("rei.utils").transparency_enabled()

M.langs = {
  go = require("rei.langs.go"),
  ts = require("rei.langs.ts"),
}

return M
