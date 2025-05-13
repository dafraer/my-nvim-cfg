-- ~/.config/nvim/lua/colors/gatekeeper.lua
local M = {}

local base_30 = {
  white = "#cccdd1",
  darker_black = "#0a0a0a",
  black = "#101010", --  nvim bg
  black2 = "#181818",
  one_bg = "#1e1e1e",
  one_bg2 = "#252525",
  one_bg3 = "#2c2c2c",
  grey = "#363636",
  grey_fg = "#3d3d3d",
  grey_fg2 = "#454545",
  light_grey = "#4d4d4d",
  red = "#ff1a67",
  baby_pink = "#ff86b7",
  pink = "#ff77a8",
  line = "#2c2c2c",
  green = "#00e756",
  vibrant_green = "#10f766",
  blue = "#29adff",
  nord_blue = "#5c6ab2",
  yellow = "#fff024",
  sun = "#fff82c",
  purple = "#a79ac0",
  dark_purple = "#998cb2",
  teal = "#0b925c",
  orange = "#ffa300",
  cyan = "#29adff",
  statusline_bg = "#181818",
  lightbg = "#272727",
  pmenu_bg = "#5c6ab2",
  folder_bg = "#29adff",
}

local base_16 = {
  base00 = "#101010",
  base01 = "#171717",
  base02 = "#1e1e1e",
  base03 = "#252525",
  base04 = "#2c2c2c",
  base05 = "#d8d9dd",
  base06 = "#d2d3d7",
  base07 = "#cccdd1",
  base08 = "#ffb20f",
  base09 = "#ff004d",
  base0A = "#be620a",
  base0B = "#00e756",
  base0C = "#29adff",
  base0D = "#c54bcf",
  base0E = "#ff4394",
  base0F = "#ffccaa",
}

function M.setup()
  local hl = vim.api.nvim_set_hl

  -- UI
  hl(0, "Normal",       { fg = base_30.white, bg = base_30.black })
  hl(0, "NormalNC",     { fg = base_30.white, bg = base_30.black2 })
  hl(0, "Visual",       { bg = base_30.one_bg3 })
  hl(0, "CursorLine",   { bg = base_30.one_bg })
  hl(0, "CursorLineNr", { fg = base_30.orange })
  hl(0, "LineNr",       { fg = base_30.grey_fg2 })
  hl(0, "VertSplit",    { fg = base_30.line })
  hl(0, "StatusLine",   { fg = base_30.white, bg = base_30.statusline_bg })
  hl(0, "WinSeparator", { fg = base_30.line })

  -- Syntax
  hl(0, "Comment",      { fg = base_30.grey, italic = true })
  hl(0, "String",       { fg = base_30.green })
  hl(0, "Function",     { fg = base_30.blue })
  hl(0, "Keyword",      { fg = base_30.purple })
  hl(0, "Identifier",   { fg = base_30.orange })
  hl(0, "Type",         { fg = base_30.yellow })
  hl(0, "Number",       { fg = base_30.teal })
  hl(0, "Boolean",      { fg = base_30.red })
  hl(0, "Constant",     { fg = base_30.cyan })

  -- LSP / Diagnostics
  hl(0, "DiagnosticError", { fg = base_30.red })
  hl(0, "DiagnosticWarn",  { fg = base_30.orange })
  hl(0, "DiagnosticInfo",  { fg = base_30.blue })
  hl(0, "DiagnosticHint",  { fg = base_30.teal })

  -- Treesitter (example polish)
  hl(0, "@variable",           { fg = base_30.orange })
  hl(0, "@variable.parameter", { fg = base_30.white })

  -- UI extras
  hl(0, "Pmenu",       { fg = base_30.white, bg = base_30.pmenu_bg })
  hl(0, "PmenuSel",    { bg = base_30.nord_blue })
  hl(0, "TabLine",     { fg = base_30.white, bg = base_30.lightbg })
  hl(0, "TabLineSel",  { fg = base_30.yellow, bold = true })
  hl(0, "Search",      { bg = base_30.yellow, fg = base_30.black })

  -- Git
  hl(0, "DiffAdd",     { fg = base_30.green })
  hl(0, "DiffChange",  { fg = base_30.orange })
  hl(0, "DiffDelete",  { fg = base_30.red })
end

return M
