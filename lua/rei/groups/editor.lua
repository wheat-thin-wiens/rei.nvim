local p = require("rei.palette").defaults

return {
	ColorColumn      = { bg = p.grey1 },
	Conceal          = { fg = p.grey1 },
	Cursor           = { fg = p.black, bg = p.fg },
	lCursor          = { fg = p.black, bg = p.fg },
	CursorIM         = { fg = p.black, bg = p.fg },
	CursorLine       = { bg = p.grey1 },
	Directory        = { fg = p.purple },
	DiffAdd          = { bg = p.green, fg = p.black },
	DiffChange       = { fg = p.cyan, underline = true },
	DiffDelete       = { bg = p.orange, fg = p.black },
	DiffText         = { bg = p.cyan, fg = p.black },
	EndOfBuffer      = { fg = p.bg },
	ErrorMsg         = { fg = p.orange },
	VertSplit        = { fg = p.grey2 },
	WinSeparator     = { fg = p.grey2 },
	Folded           = { fg = p.grey4 },
	FoldColumn       = { bg = p.bg, fg = p.subtext4 },
	SignColumn       = { bg = p.bg, fg = p.subtext4 },
	IncSearch        = { fg = p.black, bg = p.cyan },
	CurSearch        = { fg = p.black, bg = p.cyan },
	LineNr           = { fg = p.grey4 },
  LineNrAbove      = { fg = p.grey4 } ,
  LineNrBelow      = { fg = p.grey4 } ,
	CursorLineNr     = { fg = p.subtext1 },
	MatchParen       = { fg = p.cyan, underline = true },
	ModeMsg          = { fg = p.grey3, bold = true },
	MoreMsg          = { fg = p.bright_purple },
	NonText          = { fg = p.subtext4 },
	Normal           = { fg = p.fg, bg = p.bg },
	NormalNC         = { fg = p.fg, bg = p.bg },
	NoramlFloat      = { fg = p.fg, bg = p.bg_dark },
	FloatBorder      = { fg = p.grey3, bg = p.bg },
	Pmenu            = { fg = p.fg, bg = p.black },
	PmenuSel         = { fg = p.white, bg = p.grey3 },
	PmenuSbar        = { bg = p.grey2 },
	PmenuThumb       = { bg = p.grey3 },
	Question         = { fg = p.purple },
	QuickFixLine     = { fg = p.red, bg = p.grey2 },
	Search           = { fg = p.bright_cyan, bg = p.black },
	SpecialKey       = { fg = p.special_grey },
	SpellBad         = { fg = p.orange, underline = true },
	SpellCap         = { fg = p.cyan },
	SpellLocal       = { fg = p.cyan },
	SpellRare        = { fg = p.cyan },
	StatusLine       = { fg = p.fg, bg = p.grey1 },
	StatusLineNC     = { fg = p.bg_dark },
	StatusLineTerm   = { fg = p.fg, bg = p.grey1 },
  StatusLineTermNC = { fg = p.subtext4 },
	TabLine          = { fg = p.subtext4 },
	TabLineFill      = { bg = p.black },
	TabLineSel       = { fg = p.fg },
	Terminal         = { fg = p.fg, bg = p.black },
	Title            = { fg = p.green },
	Italic           = { fg = p.blue, italic = true },
	Visual           = { bg = p.grey4 },
	VisualNOS        = { bg = p.grey4 },
	WarningMsg       = { fg = p.cyan },
	WildMenu         = { fg = p.black, bg = p.purple },
	Winbar           = { fg = p.fg, bg = p.grey1 },
	WinbarNC         = { fg = p.subtext4, bg = p.bg_dark },
}
