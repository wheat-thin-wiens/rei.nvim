local M = {}

M.high = {
  LineNr      = { fg = P.blue },
  LineNrAbove = { fg = P.fg },
  LineNrBelow = { fg = P.fg }
}

M.low = {
	LineNr      = { fg = P.fg },
  LineNrAbove = { fg = P.grey4 } ,
  LineNrBelow = { fg = P.grey4 } ,
}


return M
