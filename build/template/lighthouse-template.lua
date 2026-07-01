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
  border = "{{ .Palettes.dark.Border }}",
  borderPopup = "{{ .Palettes.dark.BorderPopup }}",
  foreground = "{{ .Palettes.dark.NormalFG }}",
  background = "{{ .Palettes.dark.NormalBG }}",
  activeBG = "{{ .Palettes.dark.ActiveBG }}",
  activeFG = "{{ .Palettes.dark.ActiveFG }}",
  inactiveFG = "{{ .Palettes.dark.InactiveFG }}",
  dimmedFG = "{{ .Palettes.dark.DimmedFG }}",
  unfocusedBG = "{{ .Palettes.dark.UnfocusedBG }}",
  unfocusedFG = "{{ .Palettes.dark.UnfocusedFG }}",
  highlightBG = "{{ .Palettes.dark.HighlightBG }}",
  highlightFG = "{{ .Palettes.dark.HighlightFG }}",
  slightHighlightBG = "{{ .Palettes.dark.SlightHighlightBG }}",
  listBG = "{{ .Palettes.dark.ListBG }}",
  listFG = "{{ .Palettes.dark.ListFG }}",
  popupBG = "{{ .Palettes.dark.PopupBG }}",
  popupFG = "{{ .Palettes.dark.PopupFG }}",
  cursorLineBG = "{{ .Palettes.dark.CursorLineBG }}",
  commentFG = "{{ .Palettes.dark.Comment }}",
  stringFG = "{{ .Palettes.dark.String }}",
  keywordFG = "{{ .Palettes.dark.Keyword }}",
  typeFG = "{{ .Palettes.dark.Type }}",
  variableFG = "{{ .Palettes.dark.Variable }}",
  propertyFG = "{{ .Palettes.dark.Property }}",
  errorTypeFG = "{{ .Palettes.dark.Error }}",
  functionFG = "{{ .Palettes.dark.Function }}",
  numberFG = "{{ .Palettes.dark.Number }}",
  ansiGreen = "{{ .Palettes.dark.ANSIGreen }}",
  ansiRed = "{{ .Palettes.dark.ANSIRed }}",
  ansiYellow = "{{ .Palettes.dark.ANSIYellow }}",
  ansiBlue = "{{ .Palettes.dark.ANSIBlue }}",
  ansiMagenta = "{{ .Palettes.dark.ANSIMagenta }}",
  ansiCyan = "{{ .Palettes.dark.ANSICyan }}",
  ansiBlack = "{{ .Palettes.dark.ANSIBlack }}",
  ansiWhite = "{{ .Palettes.dark.ANSIWhite }}",
  selectBG = "{{ .Palettes.dark.SelectBG }}",
  selectFG = "{{ .Palettes.dark.SelectFG }}",
  errorFG = "{{ .Palettes.dark.ErrorFG }}",
  warningFG = "{{ .Palettes.dark.WarningFG }}",
  infoFG = "{{ .Palettes.dark.InfoFG }}",
  hintFG = "{{ .Palettes.dark.HintFG }}",
  spellcheckUL = "{{ .Palettes.dark.SpellcheckUL }}",
  search1BG = "{{ .Palettes.dark.Search1BG }}",
  search2BG = "{{ .Palettes.dark.Search2BG }}",
  inputBG = "{{ .Palettes.dark.InputBG }}",
  badgeBG = "{{ .Palettes.dark.BadgeBG }}",
  badgeFG = "{{ .Palettes.dark.BadgeFG }}",
  scrollbar = "{{ .Palettes.dark.Scrollbar }}",
  -- Satellite blends the scrollbar/background toward pure black in dark mode
  -- (see the SatelliteBar/SatelliteBackground notes below).
  satelliteBar = "{{ blend .Palettes.dark.Scrollbar "#000000" 2 }}",
  satelliteBackground = "{{ blend .Palettes.dark.NormalBG "#000000" 2 }}",
}

local light = {
  border = "{{ .Palettes.light.Border }}",
  borderPopup = "{{ .Palettes.light.BorderPopup }}",
  foreground = "{{ .Palettes.light.NormalFG }}",
  background = "{{ .Palettes.light.NormalBG }}",
  activeBG = "{{ .Palettes.light.ActiveBG }}",
  activeFG = "{{ .Palettes.light.ActiveFG }}",
  inactiveFG = "{{ .Palettes.light.InactiveFG }}",
  dimmedFG = "{{ .Palettes.light.DimmedFG }}",
  unfocusedBG = "{{ .Palettes.light.UnfocusedBG }}",
  unfocusedFG = "{{ .Palettes.light.UnfocusedFG }}",
  highlightBG = "{{ .Palettes.light.HighlightBG }}",
  highlightFG = "{{ .Palettes.light.HighlightFG }}",
  slightHighlightBG = "{{ .Palettes.light.SlightHighlightBG }}",
  listBG = "{{ .Palettes.light.ListBG }}",
  listFG = "{{ .Palettes.light.ListFG }}",
  popupBG = "{{ .Palettes.light.PopupBG }}",
  popupFG = "{{ .Palettes.light.PopupFG }}",
  cursorLineBG = "{{ .Palettes.light.CursorLineBG }}",
  commentFG = "{{ .Palettes.light.Comment }}",
  stringFG = "{{ .Palettes.light.String }}",
  keywordFG = "{{ .Palettes.light.Keyword }}",
  typeFG = "{{ .Palettes.light.Type }}",
  variableFG = "{{ .Palettes.light.Variable }}",
  propertyFG = "{{ .Palettes.light.Property }}",
  errorTypeFG = "{{ .Palettes.light.Error }}",
  functionFG = "{{ .Palettes.light.Function }}",
  numberFG = "{{ .Palettes.light.Number }}",
  ansiGreen = "{{ .Palettes.light.ANSIGreen }}",
  ansiRed = "{{ .Palettes.light.ANSIRed }}",
  ansiYellow = "{{ .Palettes.light.ANSIYellow }}",
  ansiBlue = "{{ .Palettes.light.ANSIBlue }}",
  ansiMagenta = "{{ .Palettes.light.ANSIMagenta }}",
  ansiCyan = "{{ .Palettes.light.ANSICyan }}",
  ansiBlack = "{{ .Palettes.light.ANSIBlack }}",
  ansiWhite = "{{ .Palettes.light.ANSIWhite }}",
  selectBG = "{{ .Palettes.light.SelectBG }}",
  selectFG = "{{ .Palettes.light.SelectFG }}",
  errorFG = "{{ .Palettes.light.ErrorFG }}",
  warningFG = "{{ .Palettes.light.WarningFG }}",
  infoFG = "{{ .Palettes.light.InfoFG }}",
  hintFG = "{{ .Palettes.light.HintFG }}",
  spellcheckUL = "{{ .Palettes.light.SpellcheckUL }}",
  search1BG = "{{ .Palettes.light.Search1BG }}",
  search2BG = "{{ .Palettes.light.Search2BG }}",
  inputBG = "{{ .Palettes.light.InputBG }}",
  badgeBG = "{{ .Palettes.light.BadgeBG }}",
  badgeFG = "{{ .Palettes.light.BadgeFG }}",
  scrollbar = "{{ .Palettes.light.Scrollbar }}",
  -- Satellite blends the scrollbar/background toward pure white in light mode.
  satelliteBar = "{{ blend .Palettes.light.Scrollbar "#ffffff" 2 }}",
  satelliteBackground = "{{ blend .Palettes.light.NormalBG "#ffffff" 2 }}",
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
vim.api.nvim_set_hl(0, "Ignore", { fg = "{{ ok 0 0 70 }}" })
vim.api.nvim_set_hl(0, "TSURI", { fg = "{{ ok 0 0 20 }}" })
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
vim.api.nvim_set_hl(0, "Scrollview", { fg = nil, bg = "{{ ok 0 0 0 }}" })

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
