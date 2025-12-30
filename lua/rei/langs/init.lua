local M = {}

P = require("rei.palette").defaults
Transparency = require("rei.utils").transparency_enabled()

-- To enable a language, make sure it is added to config.settings.lang and set to true
M.langs = {
  go   = require("rei.langs.go"),
  java = require("rei.langs.java"),
  ts   = require("rei.langs.ts"),
}

return M
