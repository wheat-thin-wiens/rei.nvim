return {
	ColorColumn      = { bg = P.grey1 },
	Conceal          = { fg = P.grey1 },
	Cursor           = { fg = P.black, bg = P.fg },
	lCursor          = { fg = P.black, bg = P.fg },
	CursorIM         = { fg = P.black, bg = P.fg },
	CursorLine       = { bg = P.grey1 },
	Directory        = { fg = P.purple },
	DiffAdd          = { fg = P.green, bg = P.dark_green },
	DiffChange       = { fg = P.yellow },
	DiffDelete       = { fg = P.red, bg = P.dark_red },
	DiffText         = { fg = P.yellow, underline = true },
	EndOfBuffer      = { fg = P.bg },
	ErrorMsg         = { fg = P.orange },
	VertSplit        = { fg = P.grey2 },
	WinSeparator     = { fg = P.grey2 },
	Folded           = { fg = P.grey4 },
	FoldColumn       = { bg = P.bg, fg = P.subtext4 },
	SignColumn       = { bg = P.bg, fg = P.subtext4 },
	IncSearch        = { fg = P.bg, bg = P.blue },
  -- IncSearch        = { fg = P.black, bg = P.cyan },
	CurSearch        = { fg = P.bg, bg = P.blue },
	LineNr           = { fg = P.grey4 },
  LineNrAbove      = { fg = P.grey4 } ,
  LineNrBelow      = { fg = P.grey4 } ,
	CursorLineNr     = { fg = P.subtext1 },
	MatchParen       = { fg = P.orange, underline = true },
	ModeMsg          = { fg = P.grey3, bold = true },
	MoreMsg          = { fg = P.bright_Purple },
	NonText          = { fg = P.subtext4 },
	Normal           = { fg = P.fg, bg = Transparency or P.bg },
	NormalNC         = { fg = P.fg, bg = Transparency or P.bg_dark },
	NormalFloat      = { fg = P.fg, bg = Transparency or P.bg },
	FloatBorder      = { fg = P.grey4, bg = Transparency or P.bg },
	-- FloatBorder      = { fg = P.grey4, bg = Transparency or P.bg },
	Pmenu            = { fg = P.fg, bg = P.black },
	PmenuSel         = { fg = P.white, bg = P.grey3 },
	PmenuSbar        = { bg = P.grey2 },
	PmenuThumb       = { bg = P.grey3 },
	Question         = { fg = P.purple },
	QuickFixLine     = { fg = P.red, bg = P.grey2 },
	Search           = { fg = P.bright_cyan, bg = P.black },
	SpecialKey       = { fg = P.special_grey },
	SpellBad         = { fg = P.orange, underline = true },
	SpellCap         = { fg = P.cyan },
	SpellLocal       = { fg = P.cyan },
	SpellRare        = { fg = P.cyan },
	StatusLine       = { fg = P.fg, bg = P.grey0 },
	StatusLineNC     = { fg = P.bg_dark },
	StatusLineTerm   = { fg = P.fg, bg = P.grey1 },
  StatusLineTermNC = { fg = P.subtext4 },
	TabLine          = { fg = P.subtext4 },
	TabLineFill      = { bg = P.black },
	TabLineSel       = { fg = P.fg },
	Terminal         = { fg = P.fg, bg = P.black },
	Title            = { fg = P.blue, bg = P.dark_blue },
	Italic           = { fg = P.blue, italic = true },
	Visual           = { link = "VisualActive" },
  VisualActive     = { fg = "None", bg = P.grey2 },
  VisualInactive   = { fg = "None", bg = P.grey2 },
	VisualNOS        = { bg = P.grey4 },
	WarningMsg       = { fg = P.yellow },
	WildMenu         = { fg = P.black, bg = P.purple },
	Winbar           = { fg = P.fg, bg = P.grey1 },
	WinbarNC         = { fg = P.subtext4, bg = P.bg_dark },
}
