local p = require("rei.palette").defaults

return {
  NeoTreeFloatBorder  = { fg = p.grey3, bg = p.bg },
  NeoTreeFloatTitle   = { fg = p.subtext4, bg = p.fg },
  NeoTreeTitleBar     = { fg = p.fg, bg = p.grey1},
  NeoTreeGitUntracked = { fg = p.orange },
  NeoTreeGitUnstaged  = { fg = p.orange },
  NeoTreeGitConflict  = { fg = p.orange }
}
