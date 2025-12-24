local M = {}

P = require("rei.palette").defaults
Transparency = require("rei.utils").transparency_enabled()

M.langs = {
  go   = require("rei.langs.go"),
  java = require("rei.langs.java"),
  ts   = require("rei.langs.ts"),
}

return M
