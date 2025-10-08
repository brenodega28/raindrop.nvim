local M = {}

function M.setup(colors)
  local theme = {
    -- Editor
    Normal = { fg = colors.fg0, bg = colors.bg0 },
    NormalFloat = { fg = colors.fg0, bg = colors.bg0 },
    NormalNC = { fg = colors.fg1, bg = colors.bg0 },
    FloatBorder = { fg = colors.border, bg = colors.bg0 },

    -- Cursor
    Cursor = { fg = colors.bg0, bg = colors.fg0 },
    CursorLine = { bg = colors.cursor_line },
    CursorColumn = { bg = colors.cursor_line },
    CursorLineNr = { fg = colors.fg0, bold = true },
    LineNr = { fg = colors.fg3 },

    -- Visual
    Visual = { bg = colors.bg2 },
    VisualNOS = { bg = colors.bg2 },

    -- Search
    Search = { fg = colors.bg0, bg = colors.yellow },
    IncSearch = { fg = colors.bg0, bg = colors.orange },

    -- Statusline
    StatusLine = { fg = colors.fg0, bg = colors.bg1 },
    StatusLineNC = { fg = colors.fg3, bg = colors.bg1 },

    -- Windows
    WinSeparator = { fg = colors.border },
    VertSplit = { fg = colors.border },

    -- Popups
    Pmenu = { fg = colors.fg0, bg = colors.bg0 },
    PmenuSel = { fg = colors.bg0, bg = colors.cyan },
    PmenuSbar = { bg = colors.bg1 },
    PmenuThumb = { bg = colors.fg3 },

    -- Tabs
    TabLine = { fg = colors.fg2, bg = colors.bg1 },
    TabLineFill = { bg = colors.bg1 },
    TabLineSel = { fg = colors.fg0, bg = colors.bg0, bold = true },

    -- Folds
    Folded = { fg = colors.fg3, bg = colors.bg1 },
    FoldColumn = { fg = colors.fg3, bg = colors.bg0 },

    -- Diff
    DiffAdd = { fg = colors.green, bg = colors.none },
    DiffChange = { fg = colors.yellow, bg = colors.none },
    DiffDelete = { fg = colors.red, bg = colors.none },
    DiffText = { fg = colors.blue, bg = colors.bg1 },

    -- Messages
    ErrorMsg = { fg = colors.red, bold = true },
    WarningMsg = { fg = colors.yellow, bold = true },
    MoreMsg = { fg = colors.green },
    Question = { fg = colors.cyan },

    -- Syntax
    Comment = { fg = colors.fg3, italic = true },

    Constant = { fg = colors.orange },
    String = { fg = colors.string_blue },
    Character = { fg = colors.string_blue },
    Number = { fg = colors.blue },
    Boolean = { fg = colors.blue },
    Float = { fg = colors.blue },

    Identifier = { fg = colors.fg0 },
    Function = { fg = colors.teal },

    Statement = { fg = colors.cyan },
    Conditional = { fg = colors.cyan },
    Repeat = { fg = colors.cyan },
    Label = { fg = colors.cyan },
    Operator = { fg = colors.purple },
    Keyword = { fg = colors.cyan },
    Exception = { fg = colors.cyan },

    PreProc = { fg = colors.cyan },
    Include = { fg = colors.cyan },
    Define = { fg = colors.cyan },
    Macro = { fg = colors.cyan },
    PreCondit = { fg = colors.cyan },

    Type = { fg = colors.cyan_bright },
    StorageClass = { fg = colors.cyan },
    Structure = { fg = colors.cyan },
    Typedef = { fg = colors.cyan },

    Special = { fg = colors.purple },
    SpecialChar = { fg = colors.purple_light },
    Tag = { fg = colors.cyan },
    Delimiter = { fg = colors.fg1 },
    SpecialComment = { fg = colors.cyan, italic = true },
    Debug = { fg = colors.red },

    Underlined = { underline = true },
    Ignore = { fg = colors.fg3 },
    Error = { fg = colors.red, bold = true },
    Todo = { fg = colors.yellow, bold = true },

    -- Treesitter
    ["@variable"] = { fg = colors.fg0 },
    ["@variable.builtin"] = { fg = colors.blue },
    ["@variable.parameter"] = { fg = colors.fg0 },
    ["@variable.member"] = { fg = colors.fg0 },

    ["@constant"] = { fg = colors.orange },
    ["@constant.builtin"] = { fg = colors.blue },
    ["@constant.macro"] = { fg = colors.cyan },

    ["@string"] = { fg = colors.string_blue },
    ["@string.escape"] = { fg = colors.purple },
    ["@string.special"] = { fg = colors.purple },

    ["@character"] = { fg = colors.string_blue },
    ["@number"] = { fg = colors.blue },
    ["@boolean"] = { fg = colors.blue },
    ["@float"] = { fg = colors.blue },

    ["@function"] = { fg = colors.teal },
    ["@function.builtin"] = { fg = colors.teal },
    ["@function.macro"] = { fg = colors.teal },
    ["@function.method"] = { fg = colors.teal },

    ["@constructor"] = { fg = colors.cyan_bright },
    ["@parameter"] = { fg = colors.fg0 },

    ["@keyword"] = { fg = colors.cyan },
    ["@keyword.function"] = { fg = colors.cyan },
    ["@keyword.operator"] = { fg = colors.purple },
    ["@keyword.return"] = { fg = colors.cyan },
    ["@keyword.import"] = { fg = colors.cyan },

    ["@module"] = { fg = colors.fg0 },
    ["@namespace"] = { fg = colors.fg0 },

    ["@conditional"] = { fg = colors.cyan },
    ["@repeat"] = { fg = colors.cyan },
    ["@label"] = { fg = colors.cyan },
    ["@operator"] = { fg = colors.purple },
    ["@exception"] = { fg = colors.cyan },

    ["@type"] = { fg = colors.teal },
    ["@type.builtin"] = { fg = colors.cyan },
    ["@type.qualifier"] = { fg = colors.cyan },

    ["@property"] = { fg = colors.fg0 },
    ["@field"] = { fg = colors.fg0 },

    ["@punctuation.delimiter"] = { fg = colors.fg1 },
    ["@punctuation.bracket"] = { fg = colors.fg1 },
    ["@punctuation.special"] = { fg = colors.purple },

    ["@comment"] = { fg = colors.fg3, italic = true },
    ["@comment.todo"] = { fg = colors.yellow, bold = true },
    ["@comment.warning"] = { fg = colors.yellow, bold = true },
    ["@comment.note"] = { fg = colors.cyan, bold = true },
    ["@comment.error"] = { fg = colors.red, bold = true },

    ["@tag"] = { fg = colors.cyan },
    ["@tag.attribute"] = { fg = colors.teal },
    ["@tag.delimiter"] = { fg = colors.fg1 },

    -- Python decorators
    ["@attribute"] = { fg = colors.teal },
    ["@attribute.builtin"] = { fg = colors.teal },

    -- LSP
    DiagnosticError = { fg = colors.red },
    DiagnosticWarn = { fg = colors.yellow },
    DiagnosticInfo = { fg = colors.cyan },
    DiagnosticHint = { fg = colors.purple },

    DiagnosticUnderlineError = { undercurl = true, sp = colors.red },
    DiagnosticUnderlineWarn = { undercurl = true, sp = colors.yellow },
    DiagnosticUnderlineInfo = { undercurl = true, sp = colors.cyan },
    DiagnosticUnderlineHint = { undercurl = true, sp = colors.purple },

    -- Git signs
    GitSignsAdd = { fg = colors.green },
    GitSignsChange = { fg = colors.yellow },
    GitSignsDelete = { fg = colors.red },

    -- Telescope
    TelescopeNormal = { fg = colors.fg0, bg = colors.bg0 },
    TelescopeBorder = { fg = colors.border, bg = colors.bg0 },
    TelescopePromptNormal = { fg = colors.fg0, bg = colors.bg1 },
    TelescopePromptBorder = { fg = colors.border, bg = colors.bg1 },
    TelescopePromptTitle = { fg = colors.cyan, bg = colors.bg1, bold = true },
    TelescopePreviewTitle = { fg = colors.cyan, bg = colors.bg0, bold = true },
    TelescopeResultsTitle = { fg = colors.cyan, bg = colors.bg0, bold = true },
    TelescopeTitle = { fg = colors.cyan, bg = colors.bg0, bold = true },
    TelescopeResultsNormal = { fg = colors.fg0, bg = colors.bg0 },
    TelescopePreviewNormal = { fg = colors.fg0, bg = colors.bg0 },
    TelescopeSelection = { fg = colors.fg0, bg = colors.bg2, bold = true },
    TelescopeSelectionCaret = { fg = colors.cyan },
    TelescopeMatching = { fg = colors.orange, bold = true },
  }

  return theme
end

return M
