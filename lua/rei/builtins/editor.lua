local eob_set = function()
  if Transparency then
    return P.grey4
  else
    return P.bg
  end
end

local eob = eob_set()

return {
	ColorColumn      = { bg = P.grey1 },
	Conceal          = { fg = P.grey1 },
	Cursor           = { fg = P.black, bg = P.fg },
	lCursor          = { fg = P.black, bg = P.fg },
	CursorIM         = { fg = P.black, bg = P.fg },
	CursorLine       = { bg = P.grey1 },
	CursorLineNr     = { fg = P.subtext1 },
	CurSearch        = { fg = P.bg, bg = P.blue },

	Directory        = { fg = P.purple },
	DiffAdd          = { fg = P.green, bg = P.dark_green },
	DiffChange       = { fg = P.yellow },
	DiffDelete       = { fg = P.red, bg = P.dark_red },
	DiffText         = { fg = P.yellow, underline = true },

	EndOfBuffer      = { fg = eob },
	ErrorMsg         = { fg = P.orange },

	FloatBorder      = { fg = P.grey4, bg = Transparency or P.bg },
	-- FloatBorder      = { fg = P.grey4, bg = Transparency or P.bg },
	Folded           = { fg = P.grey4 },
	FoldColumn       = { bg = P.bg, fg = P.subtext4 },

	IncSearch        = { fg = P.bg, bg = P.blue },
	Italic           = { fg = P.blue, italic = true },
  -- IncSearch        = { fg = P.black, bg = P.cyan },
	-- LineNr           = { fg = P.fg },
 --  LineNrAbove      = { fg = P.grey4 } ,
 --  LineNrBelow      = { fg = P.grey4 } ,
	MatchParen       = { fg = P.orange, underline = true },
	ModeMsg          = { fg = P.grey3, bold = true },
	MoreMsg          = { fg = P.bright_Purple },

  netrw            = {},
  netrwHdr         = { fg = P.fg },
  netrwDir         = { fg = P.Purple },
  netrwExe         = { fg = P.blue },
	NonText          = { fg = P.subtext4 },
	Normal           = { fg = P.fg, bg = Transparency or P.bg },
	NormalNC         = { fg = P.fg, bg = Transparency or P.bg_dark },
	NormalFloat      = { fg = P.fg, bg = Transparency or P.bg },

	Pmenu            = { fg = P.fg, bg = Transparency or P.bg },
  PmenuSel         = { fg = P.fg, bg = P.dark_black },
	-- PmenuSel         = { fg = P.white, bg = P.grey3 },
  -- PmenuMatchSel    = { fg = P.fg, bg = P.bright_red },
	PmenuSbar        = { bg = P.grey2 },
	PmenuThumb       = { bg = P.grey3 },

	Question         = { fg = P.purple },
	QuickFixLine     = { fg = P.red, bg = P.grey2 },

	Search           = { fg = P.bright_cyan, bg = P.black },
	SignColumn       = { bg = P.bg, fg = P.subtext4 },
	SpecialKey       = { fg = P.special_grey },
	SpellBad         = { fg = P.orange, underline = true },
	SpellCap         = { fg = P.cyan },
	SpellLocal       = { fg = P.cyan },
	SpellRare        = { fg = P.cyan },
	StatusLine       = { fg = P.fg, bg = Transparency or P.grey1 },
	StatusLineNC     = { fg = P.bg_dark },
	StatusLineTerm   = { fg = P.fg, bg = P.grey1 },
  StatusLineTermNC = { fg = P.subtext4 },

	TabLine          = { fg = P.subtext4 },
	TabLineFill      = { bg = P.black },
	TabLineSel       = { fg = P.fg },
	Terminal         = { fg = P.fg, bg = P.black },
	Title            = { fg = P.blue, bg = P.dark_blue },

	VertSplit        = { fg = P.grey2 },
	Visual           = { bg = P.grey4 },
	VisualNOS        = { bg = P.grey4 },

	WarningMsg       = { fg = P.yellow },
	WildMenu         = { fg = P.black, bg = P.purple },
	Winbar           = { fg = P.fg, bg = P.grey1 },
	WinbarNC         = { fg = P.subtext4, bg = P.bg_dark },
	WinSeparator     = { fg = P.grey2 },
}
