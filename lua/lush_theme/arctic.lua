-- Template: https://github.com/rktjmp/lush-template/blob/main/lua/lush_theme/lush_template.lua

local lush = require('lush')

local norm_fg = '#D4D4D4'
local norm_bg = '#1E1E1E'

local blue = '#569CD6'
local blue2 = '#4fc1ff'
local light_blue = '#9CDCFE'
local bright_blue = '#18a3ff'
local green = '#6A9955'
local blue_green = '#4EC9B0'
local light_green = '#B5CEA8'
local light_red = '#D16969'
local orange = '#CE9178'
local yellow_orange = '#D7BA7D'
local yellow = '#DCDCAA'
local pink = '#C586C0'

local white = '#ffffff'
local gray = '#51504f'
local gray2 = '#858585'
local gray3 = '#808080'
local black = '#222222'
local black2 = '#2d2d2d'
local black3 = '#252526' -- Statusline, Tabline, Pmenu

local error_red = '#F14C4C'
local warn_yellow = '#CCA700'
local info_blue = '#3794ff'
local hint_gray = '#B0B0B0'

local selection_blue = '#094771'
local folded_blue = '#202d39'
local float_border_fg = '#454545'
local indent_guide_fg = '#404040'
local indent_guide_context_fg = '#707070'
local label_fg = '#c8c8c8'

---@diagnostic disable
local theme = lush(function(injected_functions)
  local sym = injected_functions.sym
  return {

    -- Preset
    SelectionHighlightBackground { bg = '#333a40' },
    LightBulb { fg = '#ffcc00' },
    CodeLens { fg = '#999999' },
    GutterGitModified { fg = '#1b81a8' },
    GutterGitAdded { fg = '#487e02' },
    GutterGitDeleted { fg = '#f14c4c' },
    Breadcrumb { fg = '#a9a9a9', bg = norm_bg },
    ScrollbarSlider { bg = '#424242' },
    PeekViewBorder { fg = '#3794ff' },
    PeekViewNormal { bg = '#001f33' },
    PeekViewCursorLine { bg = '#002640' },
    -- Git diff
    DiffTextAdded { bg = '#386229' },
    DiffTextDeleted { bg = '#781212' },
    DiffTextChanged { bg = '#0000ff' },
    DiffLineAdded { bg = '#373d29' },
    DiffLineDeleted { bg = '#4b1818' },
    DiffLineChanged { bg = '#0e2f44' },

    -- Editor
    ColorColumn { bg = black },
    Conceal { fg = gray2 },
    Cursor { fg = gray, bg = '#aeafad' },
    -- lCursor { },
    -- CursorIM { },
    CursorLine { bg = black },
    CursorColumn { CursorLine },
    Directory { fg = blue },
    DiffAdd { DiffLineAdded },
    DiffDelete { DiffLineDeleted },
    DiffChange { DiffLineChanged },
    DiffText { DiffTextChanged },
    EndOfBuffer { fg = norm_bg },
    -- TermCursor { },
    -- TermCursorNC { },
    ErrorMsg { fg = error_red },
    VertSplit { fg = '#444444' },
    LineNr { fg = gray2 },
    CursorLineNr { fg = '#c6c6c6' },
    Folded { bg = folded_blue },
    FoldColumn { LineNr }, -- vscode uses #c5c5c5 that is too bright and eye-catching
    SignColumn { bg = norm_bg },
    IncSearch { bg = '#515c6a' },
    -- Substitute { },
    MatchParen { bg = gray, gui = 'bold, underline' },
    ModeMsg { fg = norm_fg },
    -- MsgArea { },
    -- MsgSeparator { },
    MoreMsg { fg = norm_fg },
    NonText { fg = gray2 },
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
    StatusLineNC { fg = gray, bg = black3 },
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
    DiagnosticHint { fg = hint_gray },
    DiagnosticVirtualTextError { DiagnosticError, bg = '#332323' },
    DiagnosticVirtualTextWarn { DiagnosticWarn, bg = '#2f2c1b' },
    DiagnosticVirtualTextInfo { DiagnosticInfo, bg = '#212a35' },
    DiagnosticVirtualTextHint { DiagnosticHint, bg = black2 },
    DiagnosticUnderlineError { gui = 'undercurl', sp = error_red },
    DiagnosticUnderlineWarn { gui = 'undercurl', sp = warn_yellow },
    DiagnosticUnderlineInfo { gui = 'undercurl', sp = info_blue },
    DiagnosticUnderlineHint { gui = 'undercurl', sp = hint_gray },
    DiagnosticFloatingError { DiagnosticError },
    DiagnosticFloatingWarn { DiagnosticWarn },
    DiagnosticFloatingInfo { DiagnosticInfo },
    DiagnosticFloatingHint { DiagnosticHint },
    DiagnosticSignError { DiagnosticError },
    DiagnosticSignWarn { DiagnosticWarn },
    DiagnosticSignInfo { DiagnosticInfo },
    DiagnosticSignHint { DiagnosticHint },

    -- LSP semantic tokens
    -- To find the highlight groups: see https://github.com/neovim/neovim/blob/master/src/nvim/highlight_group.c#L267
    sym("@class") { fg = blue_green },
    sym("@struct") { fg = blue_green },
    sym("@enum") { fg = blue_green },
    sym("@enumMember") { fg = blue2 },
    -- sym("@event") { },
    sym("@interface") { fg = blue_green },
    -- sym("@modifier") { },
    sym("@regexp") { fg = light_red },
    sym("@typeParameter") { fg = blue_green },
    -- sym("@decorator") { },
    sym("@macro") { fg = blue },

    -- Treesitter
    -- The obsolete TS* highlight groups are removed since this commit
    -- https://github.com/nvim-treesitter/nvim-treesitter/commit/42ab95d5e11f247c6f0c8f5181b02e816caa4a4f
    -- Now use the capture names directly as the highlight groups.
    -- (1). How to define the highlight group, see https://github.com/rktjmp/lush.nvim/issues/109
    -- (2). To find all the capture names, see https://github.com/nvim-treesitter/nvim-treesitter/blob/master/CONTRIBUTING.md#highlights)

    sym("@attribute") { fg = blue_green },
    -- sym("@boolean") { },
    -- sym("@character") { },
    -- sym("@character.special") { },
    -- sym("@comment") { },
    -- sym("@conditional") { },
    -- sym("@conditional.ternary") { },
    -- sym("@constant") { },
    sym("@constant.builtin") { Constant },
    sym("@constant.macro") { Constant },
    sym("@constructor") { fg = blue_green },
    -- sym("@debug") { },
    -- sym("@define") { },
    sym("@error") { fg = error_red },
    -- sym("@exception") { },
    sym("@field") { fg = light_blue },
    -- sym("@float") { },
    -- sym("@function") { },
    sym("@function.builtin") { Function },
    sym("@function.call") { Function },
    sym("@function.macro") { Function },
    -- sym("@include") { },
    sym("@keyword") { Keyword },
    sym("@keyword.function") { fg = blue },
    sym("@keyword.operator") { fg = norm_fg },
    sym("@keyword.return") { fg = pink },
    sym("@label") { fg = label_fg },
    -- sym("@method") { },
    -- sym("@method.call") { },
    sym("@namespace") { fg = blue_green },
    -- sym("@none") { },
    -- sym("@number") { },
    sym("@operator") { fg = norm_fg },
    sym("@parameter") { fg = light_blue },
    -- sym("@preproc") { },
    sym("@property") { sym("@field") },
    sym("@punctuation.delimiter") { fg = norm_fg },
    sym("@punctuation.bracket") { fg = norm_fg },
    sym("@punctuation.special") { fg = norm_fg },
    -- sym("@repeat") { },
    -- sym("@storageclass") { },
    -- sym("@string") { },
    sym("@string.regex") { fg = light_red },
    sym("@string.escape") { fg = yellow_orange },
    -- sym("@string.special") { },
    -- sym("@symbol") { },
    sym("@tag") { fg = blue },
    -- sym("@tag.attribute") { },
    sym("@tag.delimiter") { fg = gray3 },
    sym("@text") { fg = norm_fg },
    sym("@text.strong") { fg = norm_fg, gui = 'bold' },
    sym("@text.emphasis") { fg = norm_fg, gui = 'italic' },
    sym("@text.underline") { fg = norm_fg, gui = 'underline' },
    sym("@text.strike") { fg = norm_fg, gui = 'strikethrough' },
    sym("@text.title") { Title, gui = 'bold' },
    -- sym("@text.literal") { },
    sym("@text.uri") { Tag },
    sym("@text.math") { fg = blue_green },
    sym("@text.reference") { fg = orange },
    -- sym("@text.environment") { },
    -- sym("@text.environment.name") { },
    -- sym("@text.todo") { },
    sym("@text.note") { fg = info_blue },
    sym("@text.warning") { fg = warn_yellow },
    sym("@text.danger") { fg = error_red },
    sym("@text.diff.add") { DiffTextAdded },
    sym("@text.diff.delete") { DiffTextDeleted },
    -- sym("@type") { },
    -- sym("@type.builtin") { },
    -- sym("@type.definition") { },
    -- sym("@type.qualifier") { },
    sym("@variable") { fg = norm_fg },
    sym("@variable.builtin") { fg = blue },
    -- sym("@conceal") { },
    -- sym("@spell") { },
    -- sym("@nospell") { },
    -- sym("@definition") { },
    -- sym("@definition.constant") { },
    -- sym("@definition.function") { },
    -- sym("@definition.method") { },
    -- sym("@definition.var") { },
    -- sym("@definition.parameter") { },
    -- sym("@definition.macro") { },
    -- sym("@definition.type") { },
    -- sym("@definition.field") { },
    -- sym("@definition.enum") { },
    -- sym("@definition.namespace") { },
    -- sym("@definition.import") { },
    -- sym("@definition.associated") { },
    -- sym("@scope") { },
    -- sym("@reference") { },

    -- nvim-cmp
    CmpItemAbbrDeprecated { fg = gray3, bg = 'NONE', gui = 'strikethrough' },
    CmpItemAbbrMatch { fg =  bright_blue, bg = 'NONE' },
    CmpItemAbbrMatchFuzzy { CmpItemAbbrMatch },
    CmpItemKindText { fg = '#cccccc', bg = 'NONE' },
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
    -- Predefined for the winhighlight config of cmp float window
    SuggestWidgetBorder { fg = float_border_fg },
    SuggestWidgetSelect { bg = selection_blue },

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
    GitSignsDeleteLn { DiffDelete },
    GitSignsAddInline { DiffTextAdded },
    GitSignsChangeInline { DiffTextChanged },
    GitSignsDeleteInline { DiffTextDeleted },

    -- vim-illuminate
    IlluminatedWordText { SelectionHighlightBackground },
    IlluminatedWordRead { SelectionHighlightBackground },
    IlluminatedWordWrite { SelectionHighlightBackground },

    -- Telescope
    TelescopeBorder { fg = float_border_fg, bg = norm_bg },
    TelescopePromptBorder { TelescopeBorder },
    TelescopeResultsBorder { TelescopePromptBorder },
    TelescopePreviewBorder { TelescopePromptBorder },
    TelescopeSelection { PmenuSel },
    TelescopeMatching { CmpItemAbbrMatch },
    TelescopeNormal { Normal },
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

    -- nvim-ufo
    UfoPreviewBorder { PeekViewBorder },
    UfoPreviewNormal { PeekViewNormal },
    UfoPreviewCursorLine { PeekViewCursorLine },
    UfoFoldedFg { fg = norm_fg },
    UfoFoldedBg { bg = folded_blue },
    UfoPreviewSbar { PeekViewNormal },
    UfoPreviewThumb { bg = '#394a4b' },
  }
end)
---@diagnostic enable

return theme
