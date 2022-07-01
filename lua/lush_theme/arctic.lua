-- Template: https://github.com/rktjmp/lush-template/blob/main/lua/lush_theme/lush_template.lua

local lush = require('lush')

local norm_fg = '#D4D4D4'
local norm_bg = '#1E1E1E'

local violet = '#646695'
local blue = '#569CD6'
local light_blue = '#9CDCFE'
local green = '#6A9955'
local blue_green = '#4EC9B0'
local light_green = '#B5CEA8'
local red = '#F44747'
local light_red = '#D16969'
local orange = '#CE9178'
local yellow_orange = '#D7BA7D'
local yellow = '#DCDCAA'
local pink = '#C586C0'

local white = '#ffffff'
local silver = '#C0C0C0'
local grey = '#51504f'
local grey2 = '#858585' -- fg for Conceal, LineNr, NonText
local grey3 = '#808080' -- fg for TSTagDelimiter like `<` `>` `/`
local black = '#222222' -- bg for CursorLine, ColorColumn
local black2 = '#2d2d2d' -- bg for TabLine, DiagnosticVirtualTextHint
local black3 = '#252526' -- bg for Pmenu, PmenuSbar, TabLineFill

local error_red = '#F14C4C'
local warn_yellow = '#CCA700'
local info_blue = '#3794ff'
local hint_grey = '#B0B0B0'

---@diagnostic disable
local theme = lush(function()
  return {

    SuggestBorder { fg = '#454545' },
    SelectionHighlightBackground { bg = '#333a40' },
    LightBulb { fg = '#ffcc00' },
    CodeLens { fg = '#999999' },
    GutterGitModified { fg = '#1b81a8' },
    GutterGitAdded { fg = '#487e02' },
    GutterGitDeleted { fg = '#f14c4c' },

    ColorColumn { bg = black },
    Conceal { fg = grey2 },
    Cursor { fg = grey, bg = '#aeafad' },
    -- lCursor { },
    -- CursorIM { },
    CursorLine { bg = black },
    CursorColumn { CursorLine },
    Directory { fg = blue },
    DiffAdd { bg = '#373d29' },
    DiffChange { bg = '#333841' },
    DiffDelete { bg = '#4b1818' },
    DiffText { bg = '#213352' },
    EndOfBuffer { fg = norm_bg },
    -- TermCursor { },
    -- TermCursorNC { },
    ErrorMsg { fg = error_red },
    VertSplit { fg = '#444444' },
    LineNr { fg = grey2 },
    CursorLineNr { fg = '#c6c6c6' },
    Folded { bg = '#202d39' },
    FoldColumn { LineNr }, -- vscode uses #c5c5c5, which is too bright
    SignColumn { bg = norm_bg },
    IncSearch { bg = '#515c6a' },
    -- Substitute { },
    MatchParen { bg = grey, gui = 'bold, underline' },
    ModeMsg { fg = norm_fg },
    -- MsgArea { },
    -- MsgSeparator { },
    MoreMsg { fg = norm_fg },
    NonText { fg = grey2 },
    Normal { fg = norm_fg, bg = norm_bg },
    -- NormalFloat { },
    -- NormalNC { },
    Pmenu { fg = norm_fg, bg = black3 },
    PmenuSel { fg = white, bg = '#094771' },
    PmenuSbar { bg = black3 },
    PmenuThumb { bg = '#474747' },
    Question { fg = blue },
    QuickFixLine { bg = '#37373d', gui = 'bold' },
    Search { bg = '#613214' },
    SpecialKey { NonText },
    SpellBad { gui = 'undercurl', sp = error_red },
    SpellCap { gui = 'undercurl', sp = warn_yellow},
    SpellLocal { gui = 'undercurl', sp = info_blue },
    SpellRare  { gui = 'undercurl', sp = info_blue  },
    -- StatusLine { },
    -- StatusLineNC { },
    TabLine { fg = '#8f8f8f', bg = black2 },
    TabLineFill { fg = 'NONE', bg = black3 },
    TabLineSel { fg = white, bg = norm_bg },
    Title { fg = blue, gui = 'bold' },
    Visual { bg = '#264F78' },
    -- VisualNOS { },
    WarningMsg { fg = warn_yellow },
    Whitespace { fg = '#3e3e3d' },
    -- Winseparator { },
    WildMenu { PmenuSel },

    Comment { fg = green, gui = 'italic' },

    Constant { fg = blue },
    String { fg = orange },
    Character { Constant },
    Number { fg = light_green },
    Boolean { Constant },
    Float { Number },

    Identifier { fg = light_blue },
    Function { fg = yellow },

    Statement { fg = pink },
    Conditional { Statement },
    Repeat { Statement },
    Label { Statement },
    Operator { fg = norm_fg },
    Keyword { fg = blue },
    Exception { Statement },

    PreProc { fg = pink },
    Include { PreProc },
    Define { PreProc },
    Macro { PreProc },
    PreCondit { PreProc },

    Type { fg = blue },
    StorageClass { Type },
    Structure { Type },
    Typedef { Type },

    Special { fg = yellow_orange },
    SpecialChar { Special },
    Tag { Special },
    Delimiter { Special },
    SpecialComment { Special },
    Debug { Special },

    Underlined { gui = "underline" },
    -- Ignore { }, -- Left blank, hidden |hl-Ignore| (NOTE: May be invisible here in template)
    Error { fg = error_red },
    Todo { fg = norm_bg, bg = yellow_orange, gui = 'bold' },

    LspReferenceText { SelectionHighlightBackground },
    LspReferenceRead { SelectionHighlightBackground },
    LspReferenceWrite { SelectionHighlightBackground },
    LspCodeLens { CodeLens },
    -- LspCodeLensSeparator { }, -- Used to color the seperator between two or more code lens.
    LspSignatureActiveParameter { fg = '#18a3ff' },

    DiagnosticError { fg = error_red },
    DiagnosticWarn { fg = warn_yellow },
    DiagnosticInfo { fg = info_blue },
    DiagnosticHint { fg = hint_grey },
    DiagnosticVirtualTextError { DiagnosticError, bg = '#332323' },
    DiagnosticVirtualTextWarn { DiagnosticWarn, bg = '#2f2c1b' },
    DiagnosticVirtualTextInfo { DiagnosticInfo, bg = '#212a35' },
    DiagnosticVirtualTextHint { DiagnosticHint, bg = black2 },
    DiagnosticUnderlineError { gui = 'undercurl', sp = error_red },
    DiagnosticUnderlineWarn { gui = 'undercurl', sp = warn_yellow },
    DiagnosticUnderlineInfo { gui = 'undercurl', sp = info_blue },
    DiagnosticUnderlineHint { gui = 'undercurl', sp = hint_grey },
    DiagnosticFloatingError { DiagnosticError },
    DiagnosticFloatingWarn { DiagnosticWarn },
    DiagnosticFloatingInfo { DiagnosticInfo },
    DiagnosticFloatingHint { DiagnosticHint },
    DiagnosticSignError { DiagnosticError },
    DiagnosticSignWarn { DiagnosticWarn },
    DiagnosticSignInfo { DiagnosticInfo },
    DiagnosticSignHint { DiagnosticHint },

    -- Tree-Sitter syntax groups. Most link to corresponding
    -- vim syntax groups (e.g. TSKeyword => Keyword) by default.

    TSAttribute { fg = blue_green },
    -- TSBoolean { },
    -- TSCharacter { },
    -- TSCharacterSpecial { },
    -- TSComment { },
    -- TSConditional { },
    -- TSConstant { },
    TSConstBuiltin { Constant },
    TSConstMacro { fg = blue_green },
    TSConstructor { fg = blue_green },
    -- TSDebug { },
    -- TSDefine { },
    TSError { fg = error_red },
    -- TSException { },
    TSField { fg = light_blue },
    -- TSFloat { },
    -- TSFunction { },
    TSFuncBuiltin { Function },
    TSFuncMacro { Function },
    -- TSInclude { },
    TSKeyword { Keyword },
    TSKeywordFunction { fg = blue },
    TSKeywordOperator { fg = blue },
    TSKeywordReturn { fg = pink },
    TSLabel { fg = '#C8C8C8' },
    -- TSMethod { },
    TSNamespace { fg = blue_green },
    -- TSNone { },
    -- TSNumber { },
    TSOperator { fg = norm_fg },
    TSParameter { fg = light_blue },
    -- TSParameterReference { },
    -- TSPreProc { },
    TSProperty { TSField },
    TSPunctDelimiter { fg = norm_fg },
    TSPunctBracket { fg = norm_fg },
    TSPunctSpecial { fg = norm_fg },
    -- TSRepeat { },
    -- TSStorageClass { },
    -- TSString { },
    TSStringRegex { fg = light_red },
    TSStringEscape { fg = yellow_orange },
    -- TSStringSpecial { },
    -- TSSymbol { },
    TSTag { fg = blue },
    -- TSTagAttribute { },
    TSTagDelimiter { fg = grey3 },
    TSText { fg = norm_fg },
    TSStrong { fg = norm_fg, gui = 'bold' },
    TSEmphasis { fg = norm_fg, gui = 'italic' },
    TSUnderline { fg = norm_fg, gui = 'underline' },
    TSStrike { fg = norm_fg, gui = 'strikethrough' },
    TSTitle { Title, gui = 'bold' },
    -- TSLiteral { },
    TSURI { Tag },
    TSMath { fg = blue_green },
    TSTextReference { fg = orange },
    -- TSEnvironment { },
    -- TSEnvironmentName { },
    TSNote { fg = info_blue },
    TSWarning { fg = warn_yellow },
    TSDanger { fg = error_red },
    TSType { fg = blue_green },
    TSTypeBuiltin { fg = blue_green },
    TSVariable { fg = norm_fg },
    TSVariableBuiltin { fg = blue },
  }
end)
---@diagnostic enable

return theme
