-- Template: https://github.com/rktjmp/lush-template/blob/main/lua/lush_theme/lush_template.lua

local lush = require('lush')

local norm_fg = '#D4D4D4'
local norm_bg = '#1E1E1E'

local violet = '#646695'
local blue = '#569CD6'
local light_blue = '#9CDCFE'
local bright_blue = '#18a3ff'
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
local black3 = '#252526' -- bg for Pmenu, PmenuSbar, TabLineFill, Statusline

local error_red = '#F14C4C'
local warn_yellow = '#CCA700'
local info_blue = '#3794ff'
local hint_grey = '#B0B0B0'

local selection_blue = '#094771'
local float_border_fg = '#454545'
local float_normal_fg = '#cccccc'
local indent_guide_fg = '#404040'
local indent_guide_context_fg = '#707070'

---@diagnostic disable
local theme = lush(function()
  return {

    -- Preset
    SelectionHighlightBackground { bg = '#333a40' },
    LightBulb { fg = '#ffcc00' },
    CodeLens { fg = '#999999' },
    GutterGitModified { fg = '#1b81a8' },
    GutterGitAdded { fg = '#487e02' },
    GutterGitDeleted { fg = '#f14c4c' },
    Breadcrumb { fg = '#a9a9a9', bg = norm_bg },

    -- Editor
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
    PmenuSel { fg = white, bg = selection_blue },
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
    StatusLine { bg = black3 },
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
    Winbar { Breadcrumb },
    WinbarNC { Breadcrumb },
    FloatBorder { fg = float_border_fg },

    -- Symtax
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

    -- LSP
    LspReferenceText { SelectionHighlightBackground },
    LspReferenceRead { SelectionHighlightBackground },
    LspReferenceWrite { SelectionHighlightBackground },
    LspCodeLens { CodeLens },
    -- LspCodeLensSeparator { }, -- Used to color the seperator between two or more code lens.
    LspSignatureActiveParameter { fg = bright_blue },

    -- Diagnostics
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

    -- nvim-cmp
    CmpItemAbbrDeprecated { fg = grey3, bg = 'NONE', gui = 'strikethrough' },
    CmpItemAbbrMatch { fg =  bright_blue, bg = 'NONE' },
    CmpItemAbbrMatchFuzzy { CmpItemAbbrMatch },

    SuggestWidgetBorder { fg = float_border_fg },
    SuggestWidgetSelect { bg = selection_blue },

    CmpItemKindText { fg = float_normal_fg, bg = 'NONE' },
    CmpItemKindMethod { fg = '#b180d7', bg = 'NONE' },
    CmpItemKindFunction { CmpItemKindMethod },
    CmpItemKindConstructor { CmpItemKindFunction },
    CmpItemKindField { fg = '#75beff', bg = 'NONE' },
    CmpItemKindVariable { CmpItemKindField },
    CmpItemKindClass { fg = '#ee9d28', bg = 'NONE' },
    CmpItemKindInterface { CmpItemKindField },
    CmpItemKindModule { CmpItemKindText },
    CmpItemKindProperty { CmpItemKindText },
    CmpItemKindUnit { CmpItemKindText },
    CmpItemKindValue { CmpItemKindText },
    CmpItemKindEnum { CmpItemKindClass },
    CmpItemKindKeyword { CmpItemKindText },
    CmpItemKindSnippet { CmpItemKindText },
    CmpItemKindColor { CmpItemKindText },
    CmpItemKindFile { CmpItemKindText },
    CmpItemKindReference { CmpItemKindText },
    CmpItemKindFolder { CmpItemKindText },
    CmpItemKindEnumMember { CmpItemKindField },
    CmpItemKindConstant { CmpItemKindText },
    CmpItemKindStruct { CmpItemKindText },
    CmpItemKindEvent { CmpItemKindClass },
    CmpItemKindOperator { CmpItemKindText },
    CmpItemKindTypeParameter { CmpItemKindText },

    -- Aerial
    -- Same with the corresponding one in CmpItemKind above
    AerialTextIcon { CmpItemKindText },
    AerialMethodIcon { CmpItemKindMethod },
    AerialFunctionIcon { CmpItemKindFunction },
    AerialConstructorIcon { CmpItemKindConstructor },
    AerialFieldIcon { CmpItemKindField },
    AerialVariableIcon { CmpItemKindVariable },
    AerialClassIcon { CmpItemKindClass },
    AerialInterfaceIcon { CmpItemKindInterface },
    AerialModuleIcon { CmpItemKindModule },
    AerialPropertyIcon { CmpItemKindProperty },
    AerialUnitIcon { CmpItemKindUnit },
    AerialValueIcon { CmpItemKindValue },
    AerialEnumIcon { CmpItemKindEnum },
    AerialKeywordIcon { CmpItemKindKeyword },
    AerialSnippetIcon { CmpItemKindSnippet },
    AerialColorIcon { CmpItemKindColor },
    AerialFileIcon { CmpItemKindFile },
    AerialReferenceIcon { CmpItemKindReference },
    AerialFolderIcon { CmpItemKindFolder },
    AerialEnumMemberIcon { CmpItemKindEnumMember },
    AerialConstantIcon { CmpItemKindConstant },
    AerialStructIcon { CmpItemKindStruct },
    AerialEventIcon { CmpItemKindEvent },
    AerialOperatorIcon { CmpItemKindOperator },
    AerialTypeParameterIcon { CmpItemKindTypeParameter },

    -- Gitsigns
    GitSignsAdd { GutterGitAdded },
    GitSignsChange { GutterGitModified },
    GitSignsDelete { GutterGitDeleted },
    GitSignsAddNr { GitSignsAdd },
    GitSignsChangeNr { GitSignsChange },
    GitSignsDeleteNr { GitSignsDelete },
    GitSignsAddLn { DiffAdd },
    GitSignsChangeLn { DiffChange },

    -- vim-illuminate
    illuminatedWord { SelectionHighlightBackground },
    illuminatedCurWord { SelectionHighlightBackground },

    -- Telescope
    TelescopeBorder { fg = float_border_fg },
    TelescopePromptBorder { TelescopeBorder },
    TelescopeResultsBorder { TelescopePromptBorder },
    TelescopePreviewBorder { TelescopePromptBorder },
    TelescopeSelection { PmenuSel },
    TelescopeMatching { CmpItemAbbrMatch },
    TelescopeNormal { fg = float_normal_fg },
    TelescopePromptPrefix { TelescopeNormal },

    -- Harpoon
    HarpoonBorder { TelescopeBorder },
    HarpoonWindow { TelescopeNormal },

    -- fFHighlight
    fFHintWords { gui = 'underline', sp = 'yellow' },
    fFHintCurrentWord { gui = 'undercurl', sp = 'yellow' },

    -- indent-blankline
    IndentBlanklineChar { fg = indent_guide_fg },
    IndentBlanklineSpaceChar { IndentBlanklineChar },
    IndentBlanklineSpaceCharBlankline { IndentBlanklineChar },
    IndentBlanklineContextChar { fg = indent_guide_context_fg },
    IndentBlanklineContextSpaceChar { IndentBlanklineContextChar },
    IndentBlanklineContextStart { gui = 'underline', sp = indent_guide_context_fg },

  }
end)
---@diagnostic enable

return theme
