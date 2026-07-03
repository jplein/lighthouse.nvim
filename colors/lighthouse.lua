-- Name:         Lighthouse
-- Author:       Jason Plein <jplein@gmail.com>
-- Maintainer:   Jason Plein <jplein@gmail.com>
-- License:      MIT

-- Lighthouse is a single colorscheme with dark and light variants. The active
-- variant is chosen from vim.o.background at load time, so:
--
--     :set background=light
--     :colorscheme lighthouse

local dark = {
  border = "#3a3a3a",
  borderPopup = "#636363",
  foreground = "#f1f1f1",
  background = "#1b1b1b",
  activeBG = "#252525",
  activeFG = "#ffffff",
  inactiveFG = "#919191",
  dimmedFG = "#777777",
  unfocusedBG = "#252525",
  unfocusedFG = "#919191",
  highlightBG = "#076787",
  highlightFG = "#ffffff",
  slightHighlightBG = "#252525",
  listBG = "#272727",
  listFG = "#ffffff",
  popupBG = "#272727",
  popupFG = "#ffffff",
  cursorLineBG = "#252525",
  cursorBG = "#009fce",
  cursorFG = "#000000",
  commentFG = "#919191",
  stringFG = "#9ad7b5",
  keywordFG = "#bdc7dd",
  typeFG = "#afccda",
  variableFG = "#ccc8a8",
  propertyFG = "#76b5d2",
  errorTypeFG = "#aa5f55",
  functionFG = "#5bb8df",
  numberFG = "#9c934a",
  ansiGreen = "#31b97f",
  ansiRed = "#f56d60",
  ansiYellow = "#b0a01c",
  ansiBlue = "#7899f7",
  ansiMagenta = "#e759e6",
  ansiCyan = "#27addc",
  ansiBlack = "#000000",
  ansiWhite = "#b9b9b9",
  selectBG = "#184c61",
  selectFG = "#ffffff",
  errorFG = "#f40040",
  warningFG = "#a37e00",
  infoFG = "#a37e00",
  hintFG = "#4f75fe",
  spellcheckUL = "#a82721",
  search1BG = "#965a0d",
  search2BG = "#4e3317",
  inputBG = "#1e1e1e",
  badgeBG = "#117597",
  badgeFG = "#ffffff",
  scrollbar = "#464646",
  -- Satellite blends the scrollbar/background toward pure black in dark mode
  -- (see the SatelliteBar/SatelliteBackground notes below).
  satelliteBar = "#8c8c8c",
  satelliteBackground = "#363636",
}

local light = {
  border = "#cfcfcf",
  borderPopup = "#bebebe",
  foreground = "#000000",
  background = "#f4f4f4",
  activeBG = "#ffffff",
  activeFG = "#000000",
  inactiveFG = "#777777",
  dimmedFG = "#ababab",
  unfocusedBG = "#ffffff",
  unfocusedFG = "#919191",
  highlightBG = "#8ddbfe",
  highlightFG = "#000000",
  slightHighlightBG = "#ffffff",
  listBG = "#fcfcfc",
  listFG = "#000000",
  popupBG = "#ffffff",
  popupFG = "#000000",
  cursorLineBG = "#ffffff",
  cursorBG = "#000000",
  cursorFG = "#ffffff",
  commentFG = "#6a6a6a",
  stringFG = "#006424",
  keywordFG = "#304aff",
  typeFG = "#006887",
  variableFG = "#6a5f00",
  propertyFG = "#2200ee",
  errorTypeFG = "#e00010",
  functionFG = "#0083aa",
  numberFG = "#6a5f00",
  ansiGreen = "#006842",
  ansiRed = "#a60008",
  ansiYellow = "#625800",
  ansiBlue = "#2500fb",
  ansiMagenta = "#8e008f",
  ansiCyan = "#00607d",
  ansiBlack = "#5e5e5e",
  ansiWhite = "#ababab",
  selectBG = "#abe4fe",
  selectFG = "#000000",
  errorFG = "#ff7e82",
  warningFG = "#d3a400",
  infoFG = "#d3a400",
  hintFG = "#88a7fe",
  spellcheckUL = "#a60008",
  search1BG = "#fde098",
  search2BG = "#f9f3c3",
  inputBG = "#f4f4f4",
  badgeBG = "#9edffd",
  badgeFG = "#000000",
  scrollbar = "#919191",
  -- Satellite blends the scrollbar/background toward pure white in light mode.
  satelliteBar = "#232323",
  satelliteBackground = "#e9e9e9",
}

local p = vim.o.background == "light" and light or dark

local border = p.border
local borderPopup = p.borderPopup
local foreground = p.foreground
local background = p.background

local activeBG = p.activeBG
local activeFG = p.activeFG

local inactiveFG = p.inactiveFG

local dimmedFG = p.dimmedFG

local unfocusedBG = p.unfocusedBG
local unfocusedFG = p.unfocusedFG

local highlightBG = p.highlightBG
local highlightFG = p.highlightFG
local slightHighlightBG = p.slightHighlightBG

local listBG = p.listBG
local listFG = p.listFG

local popupBG = p.popupBG
local popupFG = p.popupFG

local cursorLineBG = p.cursorLineBG
local cursorBG = p.cursorBG
local cursorFG = p.cursorFG

local commentFG = p.commentFG
local stringFG = p.stringFG
local keywordFG = p.keywordFG
local typeFG = p.typeFG
local variableFG = p.variableFG
local propertyFG = p.propertyFG
local errorTypeFG = p.errorTypeFG
local functionFG = p.functionFG
local numberFG = p.numberFG

local ansiGreen = p.ansiGreen
local ansiRed = p.ansiRed
local ansiYellow = p.ansiYellow
local ansiBlue = p.ansiBlue
local ansiMagenta = p.ansiMagenta
local ansiCyan = p.ansiCyan
local ansiBlack = p.ansiBlack
local ansiWhite = p.ansiWhite

local selectBG = p.selectBG
local selectFG = p.selectFG

local errorFG = p.errorFG
local warningFG = p.warningFG
local infoFG = p.infoFG
local hintFG = p.hintFG

local spellcheckUL = p.spellcheckUL

local search1BG = p.search1BG
local search2BG = p.search2BG

local inputBG = p.inputBG

local badgeBG = p.badgeBG
local badgeFG = p.badgeFG

local scrollbar = p.scrollbar

vim.cmd("highlight clear")
vim.cmd("syntax reset")

-- Set after `highlight clear`, which itself resets g:colors_name to nil.
vim.g.colors_name = 'lighthouse'


-- -- Basic fonts --
vim.api.nvim_set_hl(0, "Normal", { fg = nil, bg = nil })
vim.api.nvim_set_hl(0, "NormalNC", { fg = nil, bg = nil })

-- -- UI --
vim.api.nvim_set_hl(0, "IncSearch", { bg = search1BG })
vim.api.nvim_set_hl(0, "CurSearch", { link = "IncSearch" })

vim.api.nvim_set_hl(0, "Search", { bg = search2BG })
vim.api.nvim_set_hl(0, "Visual", { fg = selectFG, bg = selectBG })
vim.api.nvim_set_hl(0, "MatchParen", { bg = search2BG })

vim.api.nvim_set_hl(0, "LineNr", { fg = dimmedFG })
vim.api.nvim_set_hl(0, "CursorLineNr", { fg = inactiveFG, bold = true })

vim.api.nvim_set_hl(0, "VertSplit", { fg = border, bg = background })
vim.api.nvim_set_hl(0, "WinSeparator", { fg = border, bg = background })

vim.api.nvim_set_hl(0, "StatusLine", { fg = activeFG, bg = activeBG })
vim.api.nvim_set_hl(0, "StatusLineNC", { fg = inactiveFG, bg = activeBG })

vim.api.nvim_set_hl(0, "StatusLineFile", { fg = activeFG, bg = activeBG, bold = true })
vim.api.nvim_set_hl(0, "StatusLineFileNC", { fg = inactiveFG, bg = activeBG })

vim.api.nvim_set_hl(0, "StatusLineFillChars", { fg = background, bg = activeBG })
vim.api.nvim_set_hl(0, "StatusLineFillCharsNC", { fg = background, bg = activeBG })

-- vim.api.nvim_set_hl(0, "StatusLineMode", { fg = foreground, bg = activeBG })
-- vim.api.nvim_set_hl(0, "StatusLineModeNC", { bg = inactiveFG, bg = unfocusedBG })

vim.api.nvim_set_hl(0, "StatusLineInfo", { fg = inactiveFG, bg = activeBG })
vim.api.nvim_set_hl(0, "StatusLineInfoNC", { fg = inactiveFG, bg = activeBG })

vim.api.nvim_set_hl(0, "ToolbarButton", { reverse = true })
vim.api.nvim_set_hl(0, "ToolbarLine", { bg = inputBG })
vim.api.nvim_set_hl(0, "Pmenu", { bg = background })
vim.api.nvim_set_hl(0, "PmenuSel", { fg = highlightFG, bg = highlightBG })
vim.api.nvim_set_hl(0, "PmenuThumb", { bg = inactiveFG })
vim.api.nvim_set_hl(0, "PmenuSbar", { bg = listBG })

vim.api.nvim_set_hl(0, "DiffAdd", { fg = ansiGreen })
vim.api.nvim_set_hl(0, "DiffChange", { bg = inputBG })
vim.api.nvim_set_hl(0, "DiffDelete", { fg = ansiRed })
vim.api.nvim_set_hl(0, "DiffText", { fg = foreground })

vim.api.nvim_set_hl(0, "EndOfBuffer", { fg = background })

-- For https://github.com/lewis6991/satellite.nvim
--
-- Satellite blends the scrollbar and the background with #000000 (if
-- vim.opt.background is "dark") or #ffffff (if vim.opt.background is "light")
-- when the winblend option is enabled. The "blend" function call is making a
-- color twice as far from pure black as the original scrollbar and background
-- color, respectively, which, if the winblend option is 50, makes the background
-- the same color (approximately) as the background, and the scrollbar thumb the
-- same color (approximately) as the scrollbar color specified in the palette.
vim.api.nvim_set_hl(0, "SatelliteBar", { bg = p.satelliteBar })
vim.api.nvim_set_hl(0, "SatelliteBackground", { bg = p.satelliteBackground })

vim.api.nvim_set_hl(0, "Folded", { fg = foreground, bg = highlightFG })
vim.api.nvim_set_hl(0, "CursorLine", { bg = cursorLineBG })
vim.api.nvim_set_hl(0, "CursorColumn", { fg = foreground, bg = highlightBG })

vim.api.nvim_set_hl(0, "NormalFloat", { bg = background, fg = foreground })
vim.api.nvim_set_hl(0, "FloatBorder", { bg = background, fg = borderPopup })

-- -- Snacks
vim.api.nvim_set_hl(0, "SnacksPicker", { bg = background, fg = foreground })
vim.api.nvim_set_hl(0, "SnacksPickerBox", { bg = background, fg = foreground })
vim.api.nvim_set_hl(0, "SnacksPickerBorder", { fg = borderPopup, bg = background})

vim.api.nvim_set_hl(0, "SnacksCursorLine", { bg = highlightBG })
vim.api.nvim_set_hl(0, "SnacksPickerCursorLine", { link = "SnacksCursorLine" })
vim.api.nvim_set_hl(0, "SnacksPickerBoxCursorLine", { link = "SnacksCursorLine" })
vim.api.nvim_set_hl(0, "SnacksPickerInputCursorLine", { link = "SnacksCursorLine" })
vim.api.nvim_set_hl(0, "SnacksPickerListCursorLine", { link = "SnacksCursorLine" })

vim.api.nvim_set_hl(0, "SnacksPickerTitle", { bg = background, fg = foreground })
vim.api.nvim_set_hl(0, "SnacksPickerBoxTitle", { link = "SnacksPickerTitle" })
vim.api.nvim_set_hl(0, "SnacksPickerListTitle", { link = "SnacksPickerTitle" })
vim.api.nvim_set_hl(0, "SnacksPickerInputTitle", { link = "SnacksPickerTitle" })

vim.api.nvim_set_hl(0, "SnacksPickerPreview", { fg = foreground, bg = background })
vim.api.nvim_set_hl(0, "SnacksPickerPreviewBorder", { fg = borderPopup, bg = background })
vim.api.nvim_set_hl(0, "SnacksPickerPreviewTitle", { link = "SnacksPickerPreview" })
vim.api.nvim_set_hl(0, "SnacksPickerPreviewCursorLine", { fg = nil, bg = cursorLineBG })
vim.api.nvim_set_hl(0, "SnacksPickerTree", { fg = border })

-- -- syntax highlighting --
vim.api.nvim_set_hl(0, "String", { fg = stringFG })
vim.api.nvim_set_hl(0, "Constant", { fg = variableFG })
vim.api.nvim_set_hl(0, "Error", { fg = errorTypeFG })
vim.api.nvim_set_hl(0, "Function", { fg = functionFG })
vim.api.nvim_set_hl(0, "TSProperty", { fg = propertyFG })

vim.api.nvim_set_hl(0, "Number", { fg = numberFG })
vim.api.nvim_set_hl(0, "Keyword", { fg = keywordFG })
vim.api.nvim_set_hl(0, "Type", { fg = typeFG })
vim.api.nvim_set_hl(0, "Identifier", { fg = variableFG })

vim.api.nvim_set_hl(0, "Comment", { fg = commentFG })
vim.api.nvim_set_hl(0, "Ignore", { fg = "#ababab" })
vim.api.nvim_set_hl(0, "TSURI", { fg = "#2e2e2e" })
vim.api.nvim_set_hl(0, "Operator", { link = "Normal" })

-- -- coc.nvim --
vim.api.nvim_set_hl(0, "CocErrorSign", { fg = errorFG })
vim.api.nvim_set_hl(0, "CocErrorHighlight", { fg = foreground })
vim.api.nvim_set_hl(0, "CocErrorFloat", { fg = foreground })
vim.api.nvim_set_hl(0, "CocErrorLine", { fg = nil })
vim.api.nvim_set_hl(0, "CocErrorVirtualText", { fg = foreground })

vim.api.nvim_set_hl(0, "CocWarningSign", { fg = warningFG })
vim.api.nvim_set_hl(0, "CocWarningHighlight", { fg = foreground })
vim.api.nvim_set_hl(0, "CocWarningFloat", { fg = foreground })
vim.api.nvim_set_hl(0, "CocWarningLine", { fg = nil })
vim.api.nvim_set_hl(0, "CocWarningVirtualText", { fg = foreground })

vim.api.nvim_set_hl(0, "CocInfoSign", { fg = infoFG })
vim.api.nvim_set_hl(0, "CocInfoHighlight", { fg = foreground })
vim.api.nvim_set_hl(0, "CocInfoFloat", { fg = foreground })
vim.api.nvim_set_hl(0, "CocInfoLine", { fg = nil })
vim.api.nvim_set_hl(0, "CocInfoVirtualText", { fg = foreground })

vim.api.nvim_set_hl(0, "CocHintSign", { fg = hintFG })
vim.api.nvim_set_hl(0, "CocHintHighlight", { fg = foreground })
vim.api.nvim_set_hl(0, "CocHintFloat", { fg = foreground })
vim.api.nvim_set_hl(0, "CocHintLine", { fg = nil })
vim.api.nvim_set_hl(0, "CocHintVirtualText", { fg = foreground })

vim.api.nvim_set_hl(0, "CocFloating", { fg = nil, bg = inputBG })
vim.api.nvim_set_hl(0, "CocSearch", { bold  = true })
vim.api.nvim_set_hl(0, "CocListLine", { fg = highlightFG, bg = highlightBG })
vim.api.nvim_set_hl(0, "CocHighlightText", { fg = highlightFG, bg = highlightBG })
vim.api.nvim_set_hl(0, "CocMenuSel", { fg = highlightFG, bg = highlightBG })
vim.api.nvim_set_hl(0, "CocFloating", { fg = listFG, bg = listBG })

-- -- nvim-cmp --
vim.api.nvim_set_hl(0, "CmpItemKind", { link = "Comment" })

-- Diagnostics
vim.api.nvim_set_hl(0, "DiagnosticError", { fg = ansiRed })
vim.api.nvim_set_hl(0, "DiagnosticWarn", { fg = ansiYellow })
vim.api.nvim_set_hl(0, "DiagnosticInfo", { fg = ansiGreen })
vim.api.nvim_set_hl(0, "DiagnosticHint", { fg = ansiBlue })
vim.api.nvim_set_hl(0, "DiagnosticOk", { fg = ansiCyan })

vim.api.nvim_set_hl(0, "DiagnosticUnderlineError", { underline = true, sp = ansiRed })
vim.api.nvim_set_hl(0, "DiagnosticUnderlineWarn", { underline = true, sp = ansiYellow })
vim.api.nvim_set_hl(0, "DiagnosticUnderlineInfo", { underline = true, sp = ansiGreen })
vim.api.nvim_set_hl(0, "DiagnosticUnderlineHint", { underline = true, sp = ansiBlue })
vim.api.nvim_set_hl(0, "DiagnosticUnderlineOk", { underline = true, sp = ansiCyan})

vim.api.nvim_set_hl(0, "SpellBad", { undercurl = true, sp = spellcheckUL })
vim.api.nvim_set_hl(0, "SpellCap", { undercurl = true, sp = ansiYellow })

-- -- nvim-scrollview: dstein64/nvim-scrollview
vim.api.nvim_set_hl(0, "Scrollview", { fg = nil, bg = "#000000" })

-- -- Telescope --
vim.api.nvim_set_hl(0, "TelescopeMatching", { fg = nil, bg = nil, bold = true })
vim.api.nvim_set_hl(0, "TelescopeBorder", { link = "VertSplit" })

-- -- fzf-lua --
vim.api.nvim_set_hl(0, "FzfLuaNormal", { fg = listFG, bg = listBG })
vim.api.nvim_set_hl(0, "FzfLuaBorder", { bg = listBG, fg = listBG })
vim.api.nvim_set_hl(0, "FzfLuaPreviewBorder", { fg = inputBG, bg = inputBG })
vim.api.nvim_set_hl(0, "FzfLuaPreviewNormal", { bg = inputBG })
vim.api.nvim_set_hl(0, "FzfLuaTitle", { bg = inputBG })
vim.api.nvim_set_hl(0, "FzfLuaPreviewTitle", { bg = inputBG })
vim.api.nvim_set_hl(0, "FzfLuaCursorLine", { fg = nil, bg = nil })
vim.api.nvim_set_hl(0, "FzfLuaHeaderText", { fg = nil, bold = true })
vim.api.nvim_set_hl(0, "FzfLuaFlagCur", { fg = nil, bold = true })
vim.api.nvim_set_hl(0, "FzfLuaLiveSym", { fg = nil, bold = true })
vim.api.nvim_set_hl(0, "FzfLuaBufFlagCur", { fg = nil, bold = true })
vim.api.nvim_set_hl(0, "FzfLuaTabMarker", { fg = nil, bold = true })
vim.api.nvim_set_hl(0, "FzfLuaBufNr", { fg = nil, bold = true })
vim.api.nvim_set_hl(0, "FzfLuaPathLineNr", { fg = foreground })
vim.api.nvim_set_hl(0, "FzfLuaHeaderBind", { fg = foreground })

-- -- markdown -- })
vim.api.nvim_set_hl(0, "mkdURL", { fg = commentFG })

-- -- basic faces --
vim.api.nvim_set_hl(0, "ActiveWindow", { link = "Normal" })
vim.api.nvim_set_hl(0, "InactiveWindow", { link = "NormalNC" })

-- -- UI --
vim.api.nvim_set_hl(0, "QuickFixLine", { link = "Search" })
vim.api.nvim_set_hl(0, "StatusLineTerm", { link = "StatusLine" })
vim.api.nvim_set_hl(0, "StatusLineTermNC", { link = "StatusLineNC" })

-- -- syntax highlighting, inheriting from other highlights --
vim.api.nvim_set_hl(0, "Boolean", { link = "Identifier" })

vim.api.nvim_set_hl(0, "Character", { link = "Number" })
vim.api.nvim_set_hl(0, "Float", { link = "Number" })

vim.api.nvim_set_hl(0, "Conditional", { link = "Keyword" })
vim.api.nvim_set_hl(0, "Exception", { link = "Keyword" })

vim.api.nvim_set_hl(0, "Typedef", { link = "Type" })
vim.api.nvim_set_hl(0, "StorageClass", { link = "Type" })
vim.api.nvim_set_hl(0, "Structure", { link = "Type" })

vim.api.nvim_set_hl(0, "TSVariable", { link = "Identifier" })

vim.api.nvim_set_hl(0, "TSParameter", { link = "Constant" })

vim.api.nvim_set_hl(0, "Statement", { link = "Normal" })
vim.api.nvim_set_hl(0, "Repeat", { link = "Normal" })
vim.api.nvim_set_hl(0, "Label", { link = "Normal" })
vim.api.nvim_set_hl(0, "Special", { link = "Normal" })
vim.api.nvim_set_hl(0, "SpecialChar", { link = "Normal" })
vim.api.nvim_set_hl(0, "Delimiter", { link = "Normal" })
vim.api.nvim_set_hl(0, "SpecialComment", { link = "Normal" })
vim.api.nvim_set_hl(0, "Debug", { link = "Normal" })
vim.api.nvim_set_hl(0, "Tag", { link = "Normal" })

vim.api.nvim_set_hl(0, "PreProc", { link = "Normal" })
vim.api.nvim_set_hl(0, "Define", { link = "Normal" })
vim.api.nvim_set_hl(0, "PreCondit", { link = "Normal" })
vim.api.nvim_set_hl(0, "Include", { link = "Normal" })
vim.api.nvim_set_hl(0, "Macro", { link = "Normal" })

 -- -- Misc faces --
 vim.api.nvim_set_hl(0, "Todo", { fg = nil, bg = nil, bold = true })
 vim.api.nvim_set_hl(0, "Underlined", { fg = nil, bg = nil, underline = true })
 vim.api.nvim_set_hl(0, "VimCommand", { fg = nil, bg = nil })
 vim.api.nvim_set_hl(0, "Terminal", { fg = nil, bg = nil })
 vim.api.nvim_set_hl(0, "Conceal", { fg = nil, bg = nil })
 vim.api.nvim_set_hl(0, "Directory", { fg = nil, bg = nil })
 vim.api.nvim_set_hl(0, "ErrorMsg", { fg = nil, bg = nil })
 vim.api.nvim_set_hl(0, "FoldColumn", { fg = nil, bg = nil })
 vim.api.nvim_set_hl(0, "ModeMsg", { fg = nil, bg = nil })
 vim.api.nvim_set_hl(0, "MoreMsg", { fg = nil, bg = nil })
 vim.api.nvim_set_hl(0, "NonText", { fg = nil, bg = nil })
 vim.api.nvim_set_hl(0, "Question", { fg = nil, bg = nil })
 vim.api.nvim_set_hl(0, "SignColumn", { fg = nil, bg = nil })
 vim.api.nvim_set_hl(0, "SpecialKey", { fg = nil, bg = nil })
 vim.api.nvim_set_hl(0, "Title", { fg = nil, bg = nil, bold = true })
 vim.api.nvim_set_hl(0, "VisualNOS", { fg = nil, bg = nil })
 vim.api.nvim_set_hl(0, "WarningMsg", { fg = nil, bg = nil })
 vim.api.nvim_set_hl(0, "WildMenu", { fg = nil, bg = nil })
 vim.api.nvim_set_hl(0, "typescriptBraces", { fg = foreground, bg = nil, link = nil })

 -- -- man pages --
 vim.api.nvim_set_hl(0, "manSubHeading", { fg = nil, bg = nil, bold = true })
 vim.api.nvim_set_hl(0, "manTitle", { fg = nil, bg = nil, bold = true })
 vim.api.nvim_set_hl(0, "manSubHeading", { fg = nil, bg = nil, bold = true })
 vim.api.nvim_set_hl(0, "manOptionDesc", { fg = nil, bg = nil, bold = true })
 vim.api.nvim_set_hl(0, "manSectionHeading", { fg = nil, bg = nil, bold = true })

-- -- plasticboy/vim-markdown syntax --
vim.api.nvim_set_hl(0, "mkdLink", { link = Normal })
vim.api.nvim_set_hl(0, "mkdListItem", { link = "Comment" })
vim.api.nvim_set_hl(0, "mkdRule", { link = "Comment" })
vim.api.nvim_set_hl(0, "mkdCode", { link = "Comment" })
vim.api.nvim_set_hl(0, "mkdID", { link = Normal })
vim.api.nvim_set_hl(0, "htmlH1", { fg = nil, bg = nil, bold = true })
vim.api.nvim_set_hl(0, "mkdCodeDelimiter", { link = "Comment" })
vim.api.nvim_set_hl(0, "mkdBlockquote", { link = Normal })
vim.api.nvim_set_hl(0, "mkdNonListItemBlock", { link = Normal })
vim.api.nvim_set_hl(0, "mkdCode", { link = Normal })

-- -- Markdown (non-TreeSitter) --
vim.api.nvim_set_hl(0, "markdownURL", { fg = commentFG })
vim.api.nvim_set_hl(0, "markdownH1Delimiter", { fg = dimmedFG })
vim.api.nvim_set_hl(0, "markdownH2Delimiter", { fg = dimmedFG })
vim.api.nvim_set_hl(0, "markdownH3Delimiter", { fg = dimmedFG })
vim.api.nvim_set_hl(0, "markdownH4Delimiter", { fg = dimmedFG })
vim.api.nvim_set_hl(0, "markdownH5Delimiter", { fg = dimmedFG })
vim.api.nvim_set_hl(0, "markdownH6Delimiter", { fg = dimmedFG })
vim.api.nvim_set_hl(0, "markdownBoldDelimiter", { fg = dimmedFG })
vim.api.nvim_set_hl(0, "markdownItalicDelimiter", { fg = dimmedFG })
vim.api.nvim_set_hl(0, "markdownLinkTextDelimiter", { fg = dimmedFG })
vim.api.nvim_set_hl(0, "markdownLinkDelimiter", { fg = dimmedFG })
vim.api.nvim_set_hl(0, "markdownCodeDelimiter", { fg = dimmedFG })
vim.api.nvim_set_hl(0, "markdownListMarker", { fg = dimmedFG })
vim.api.nvim_set_hl(0, "markdownBlockquote", { fg = dimmedFG })
vim.api.nvim_set_hl(0, "markdownLinkText", { link = "Normal" })

-- -- Markdown (Treesitter)
vim.api.nvim_set_hl(0, "@markup.link.markdown_inline", { fg = commentFG, bg = nil })
vim.api.nvim_set_hl(0, "@markup.link.url.markdown_inline", { fg = commentFG, bg = nil })
vim.api.nvim_set_hl(0, "@markup.link.label.markdown_inline", { fg = nil, bg = nil, underline = true, sp = commentFG })
vim.api.nvim_set_hl(0, "@label.markdown", { fg = commentFG, bg = nil })
vim.api.nvim_set_hl(0, "@function.latex", { fg = nil, bg = nil })
vim.api.nvim_set_hl(0, "@markup.math.latex", { fg = nil, bg = slightHighlightBG })

-- Code blocks using the orlando plugin
vim.api.nvim_set_hl(0, "OrlandoCodeBlock", { fg = nil, bg = slightHighlightBG })

-- Highlight groups used by Wolf - no effect on Neovim in the termainal
-- Only foreground and background attributes are used
vim.api.nvim_set_hl(0, "WolfCursor", { fg = cursorFG, bg = cursorBG })
vim.api.nvim_set_hl(0, "WolfTitlebar", { fg = foreground, bg = background })

-- -- NERDTREE --
vim.api.nvim_set_hl(0, "NERDTreeHelp", { link = "Comment" })

-- -- NeoTree --
vim.api.nvim_set_hl(0, "NeoTreeNormal", { fg = foreground, bg = background})
vim.api.nvim_set_hl(0, "NeoTreeNormalNC", { fg = foreground, bg = background })
vim.api.nvim_set_hl(0, "NeoTreeDirectoryIcon", { fg = commentFG })
vim.api.nvim_set_hl(0, "NeoTreeMessage", { fg = nil, link = "Comment" })
vim.api.nvim_set_hl(0, "NeoTreeRootName", { fg = nil, bold = true, italic = false, force = true })
vim.api.nvim_set_hl(0, "NeoTreeCursorLine", { fg = highlightFG, bg = highlightBG })

-- -- tree-sitter --
-- vim.api.nvim_set_hl(0, "TSField", { link = "Normal" })
vim.api.nvim_set_hl(0, "TSLabel", { link = "TSProperty" })
vim.api.nvim_set_hl(0, "@label", { link = "TSProperty" })
vim.api.nvim_set_hl(0, "@field", { link = "TSProperty" })
vim.api.nvim_set_hl(0, "TSLiteral", { link = "Normal" })
vim.api.nvim_set_hl(0, "TSTitle", { fg = nil, bg = nil, bold = true })
vim.api.nvim_set_hl(0, "TSTextReference", { link = "Normal" })
vim.api.nvim_set_hl(0, "@variable", { link = "Identifier" })
vim.api.nvim_set_hl(0, "@method.call", { link = "Function" })

vim.api.nvim_set_hl(0, "TSRepeat", { link = "Keyword" })
vim.api.nvim_set_hl(0, "@text.reference", { link = "Normal" })

vim.api.nvim_set_hl(0, "@text.diff.add", { link = "DiffAdd" })
vim.api.nvim_set_hl(0, "@text.diff.delete", { link = "DiffDelete" })
vim.api.nvim_set_hl(0, "@diff.plus", { link = "DiffAdd" })
vim.api.nvim_set_hl(0, "@diff.minus", { link = "DiffDelete" })

-- -- Makefiles --
-- vim.api.nvim_set_hl(0, "makeCommands", { link = "Normal" })

-- -- Git --
vim.api.nvim_set_hl(0, "gitcommitSummary", { link = "Normal" })

vim.api.nvim_set_hl(0, "gitcommitSelected", { link = "Comment" })
vim.api.nvim_set_hl(0, "gitcommitSelectedFile", { link = "Comment" })
vim.api.nvim_set_hl(0, "gitcommitSelectedType", { link = "Comment" })
vim.api.nvim_set_hl(0, "gitcommitDiscarded", { link = "Comment" })
vim.api.nvim_set_hl(0, "gitcommitDiscardedFile", { link = "Comment" })
vim.api.nvim_set_hl(0, "gitcommitDiscardedType", { link = "Comment" })
vim.api.nvim_set_hl(0, "gitcommitBranch", { link = "Comment" })
vim.api.nvim_set_hl(0, "gitcommitHeader", { link = "Comment" })
vim.api.nvim_set_hl(0, "gitcommitUntracked", { link = "Comment" })
vim.api.nvim_set_hl(0, "gitcommitUntrackedFile", { link = "Comment" })
vim.api.nvim_set_hl(0, "diffAdded", { link = "DiffAdd" })
vim.api.nvim_set_hl(0, "diffRemoved", { link = "DiffDelete" })

-- -- YAML --
vim.api.nvim_set_hl(0, "yamlBlockMappingKey", { link = "TSProperty" })
vim.api.nvim_set_hl(0, "Removed", { link = "Error" })

-- -- WhichKey --
vim.api.nvim_set_hl(0, "WhichKeyDesc", { link = "Normal" })

-- -- blink.cmp --
vim.api.nvim_set_hl(0, "BlinkCmpScrollBarThumb", { bg = scrollbar })
vim.api.nvim_set_hl(0, "BlinkCmpScrollBarGutter", { bg = listBG })
vim.api.nvim_set_hl(0, "BlinkCmpMenuBorder", { fg = borderPopup, bg = background })
