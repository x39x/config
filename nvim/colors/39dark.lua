local function hl(group, opts)
        vim.api.nvim_set_hl(0, group, opts)
end

local colors = {
        bg0 = "#000000",
        miku = "#ACB5DE",
        fg = "#888888",
        bg = "#1f1f1f",
        bg_alt = "#1A1A1A",
        bg_highlight = "#292929",
        bg_visual = "#212121",
        accent = "#b392f0",
        orange = "#FF9800",
        pink = "#FF7A84",
        blue = "#79b8ff",
        yellow = "#ffab70",
        green = "#9db1c5",
        red = "#cd3131",
        error = "#cd3131",

        warn = "#FF9800",
        info = "#316bcd",
        hint = "#b392f0",
        gray = "#727272",
        light_gray = "#F5F5F5",
        medium_gray = "#bbbbbb",
        comment = "#6b737c",
        link = "#1976D2",
        white = "#f8f8f8",
        keyword = "#f97583",
        border = "#444444",

        indent_guide = "#444444",
        indent_guide_active = "#383838",

        search = "#515C6A",
        green1 = "#0FBC7A",
        red0 = "#f50000",

        red1 = "#FF7B72",

        line_highlight = "#303030",
        ruler = "#2A2A2A",

        visual_bule = "#264F78",
        diff_add = "#1B7F37",
        diff_change = "#2b6bab",
        git_delete = "#cd3131",
        git_change = "#d68349",
        git_ignored = "#444444",

        --NOTE: none
        search1 = "#FCE094",
        search2 = "#63341D",
}

local function m39k()
        vim.cmd("hi clear")
        if vim.fn.exists("syntax_on") then
                vim.cmd("syntax reset")
        end
        vim.o.background = "dark"
        vim.g.colors_name = "39dark"

        -- UI
        hl("Normal", { fg = colors.fg, bg = colors.bg })
        hl("NormalFloat", { fg = colors.fg, bg = colors.bg_alt })
        hl("FloatBorder", { fg = colors.border, bg = colors.bg_alt })
        hl("CursorLine", { bg = colors.line_highlight })
        hl("CursorColumn", { bg = colors.line_highlight })
        hl("Cursor", { fg = colors.bg, bg = colors.fg })
        hl("LineNr", { fg = colors.gray })
        hl("CursorLineNr", { fg = colors.white })
        hl("SignColumn", { fg = colors.gray, bg = colors.bg })
        hl("ColorColumn", { bg = colors.line_highlight })
        hl("StatusLine", { fg = colors.gray, bg = colors.bg_alt })
        hl("StatusLineNC", { fg = colors.gray, bg = colors.bg_alt })
        hl("VertSplit", { fg = colors.indent_guide, bg = colors.indent_guide })
        hl("Pmenu", { fg = colors.fg, bg = colors.bg_alt })
        hl("PmenuSel", { fg = colors.light_gray, bg = colors.bg_visual })
        hl("PmenuSbar", { bg = colors.bg_alt })
        hl("PmenuThumb", { bg = colors.gray })
        hl("TabLine", { fg = colors.gray, bg = colors.bg_alt })
        hl("TabLineFill", { bg = colors.bg_alt })
        hl("TabLineSel", { fg = colors.light_gray, bg = colors.bg })
        hl("Visual", { bg = colors.visual_bule })
        hl("VisualNOS", { bg = colors.red })
        hl("Search", { bg = colors.search })
        hl("CurSearch", { bg = colors.green1, fg = colors.bg0 })
        hl("IncSearch", { bg = colors.red0, fg = colors.bg0 })
        hl("MatchParen", { fg = colors.orange, bold = true })
        hl("Directory", { fg = colors.blue })
        hl("Folded", { fg = colors.gray, bg = colors.bg_highlight })
        hl("FoldColumn", { fg = colors.gray, bg = colors.bg })
        hl("NonText", { fg = colors.gray })
        hl("EndOfBuffer", { fg = colors.gray })
        hl("SpecialKey", { fg = colors.gray })
        hl("Title", { fg = colors.accent, bold = true })
        hl("Question", { fg = colors.blue })
        hl("MoreMsg", { fg = colors.blue })
        hl("ModeMsg", { fg = colors.fg })
        hl("ErrorMsg", { fg = colors.error })
        hl("WarningMsg", { fg = colors.warn })
        hl("WildMenu", { fg = colors.light_gray, bg = colors.bg_highlight })
        hl("Conceal", { fg = colors.comment })
        hl("Whitespace", { fg = colors.indent_guide })

        -- Syntax
        hl("Comment", { fg = colors.comment, italic = true })
        hl("String", { fg = colors.yellow })
        hl("Character", { fg = colors.yellow })
        hl("Number", { fg = colors.white })
        hl("Float", { fg = colors.white })
        hl("Boolean", { fg = colors.blue })
        hl("Keyword", { fg = colors.keyword })
        hl("Operator", { fg = colors.medium_gray })
        hl("Function", { fg = colors.accent })
        hl("Type", { fg = colors.accent })
        hl("Constant", { fg = colors.blue })
        hl("Identifier", { fg = colors.light_gray })
        hl("Statement", { fg = colors.keyword })
        hl("Conditional", { fg = colors.keyword })
        hl("Repeat", { fg = colors.keyword })
        hl("Label", { fg = colors.keyword })
        hl("Exception", { fg = colors.keyword })
        hl("PreProc", { fg = colors.accent })
        hl("Include", { fg = colors.keyword })
        hl("Define", { fg = colors.keyword })
        hl("Special", { fg = colors.blue })
        hl("SpecialChar", { fg = colors.yellow })
        hl("Delimiter", { fg = colors.medium_gray })
        hl("Tag", { fg = colors.blue })
        hl("Debug", { fg = colors.error })
        hl("Underlined", { fg = colors.link, underline = true })
        hl("Error", { fg = colors.error })
        hl("Todo", { fg = colors.light_gray, bg = colors.bg_highlight, bold = true })
        hl("Macro", { fg = colors.medium_gray })
        hl("StorageClass", { fg = colors.keyword })
        hl("Structure", { fg = colors.accent })
        hl("Typedef", { fg = colors.accent })
        hl("SpecialComment", { fg = colors.comment, italic = true })

        -- Treesitter
        hl("@comment", { fg = colors.comment, italic = true })
        hl("@none", { fg = "NONE", bg = "NONE" })
        hl("@string", { fg = colors.yellow })
        hl("@string.regex", { fg = colors.accent })
        hl("@string.regexp", { fg = colors.accent })
        hl("@string.escape", { fg = colors.red, bold = true })
        hl("@string.special.symbol", { fg = colors.blue })
        hl("@character", { fg = colors.yellow })
        hl("@character.special", { fg = colors.yellow })
        hl("@number", { fg = colors.white })
        hl("@number.float", { fg = colors.white })
        hl("@boolean", { fg = colors.blue })
        hl("@function", { fg = colors.accent })
        hl("@function.call", { fg = colors.accent })
        hl("@function.builtin", { fg = colors.accent })
        hl("@function.macro", { fg = colors.accent })
        hl("@function.method", { fg = colors.accent })
        hl("@function.method.call", { fg = colors.accent })
        hl("@method", { fg = colors.accent })
        hl("@method.call", { fg = colors.accent })
        hl("@constructor", { fg = colors.accent })
        hl("@parameter", { fg = colors.orange })
        hl("@parameter.reference", { fg = colors.orange })
        hl("@keyword", { fg = colors.keyword })
        hl("@keyword.function", { fg = colors.keyword })
        hl("@keyword.operator", { fg = colors.keyword })
        hl("@keyword.return", { fg = colors.keyword })
        hl("@keyword.coroutine", { fg = colors.keyword })
        hl("@keyword.directive", { fg = colors.keyword })
        hl("@conditional", { fg = colors.keyword })
        hl("@repeat", { fg = colors.keyword })
        hl("@label", { fg = colors.blue })
        hl("@include", { fg = colors.keyword })
        hl("@exception", { fg = colors.keyword })
        hl("@type", { fg = colors.accent })
        hl("@type.builtin", { fg = colors.accent })
        hl("@type.definition", { fg = colors.accent })
        hl("@type.qualifier", { fg = colors.keyword })
        hl("@storageclass", { fg = colors.keyword })
        hl("@attribute", { fg = colors.orange })
        hl("@field", { fg = colors.blue })
        hl("@property", { fg = colors.white })
        hl("@variable", { fg = colors.light_gray })
        hl("@variable.builtin", { fg = colors.blue })
        hl("@variable.member", { fg = colors.accent })
        hl("@constant", { fg = colors.blue })
        hl("@constant.builtin", { fg = colors.blue })
        hl("@constant.macro", { fg = colors.blue })
        hl("@namespace", { fg = colors.accent })
        hl("@symbol", { fg = colors.blue })
        hl("@text", { fg = colors.fg })
        hl("@text.strong", { fg = colors.pink, bold = true })
        hl("@text.emphasis", { italic = true })
        hl("@text.underline", { underline = true })
        hl("@text.strike", { strikethrough = true })
        hl("@text.title", { fg = colors.pink, bold = true })
        hl("@text.literal", { fg = colors.green })
        hl("@text.uri", { fg = colors.yellow, underline = true })
        hl("@text.math", { fg = colors.blue })
        hl("@text.reference", { fg = colors.blue })
        hl("@text.todo", { fg = colors.light_gray, bg = colors.bg_highlight, bold = true })
        hl("@text.note", { fg = colors.info, bg = colors.bg_highlight })
        hl("@text.warning", { fg = colors.warn, bg = colors.bg_highlight })
        hl("@text.danger", { fg = colors.error, bg = colors.bg_highlight })
        hl("@tag", { fg = colors.blue })
        hl("@tag.attribute", { fg = colors.accent })
        hl("@tag.builtin", { fg = colors.yellow })
        hl("@tag.delimiter", { fg = colors.medium_gray })
        hl("@macro", { fg = colors.medium_gray })
        hl("@identifier", { fg = colors.comment })
        hl("@punctuation.delimiter", { fg = colors.medium_gray })
        hl("@punctuation.bracket", { fg = colors.medium_gray })
        hl("@punctuation.special", { fg = colors.medium_gray })
        hl("@operator", { fg = colors.medium_gray })
        hl("@error", { fg = colors.error })
        hl("@debug", { fg = colors.hint })

        --DONE:

        --TODO:   diff
        hl("DiffChange", { bg = colors.diff_change })
        hl("DiffAdd", { bg = colors.diff_add, fg = colors.white })
        hl("DiffText", { bg = colors.red0, fg = colors.bg0 })
        hl("DiffDelete", { bg = colors.medium_gray, fg = colors.fg })
        hl("diffAdded", { fg = colors.diff_add })
        hl("diffRemoved", { fg = colors.git_delete })
        hl("diffChanged", { fg = colors.git_change })
        hl("@text.diff.add", { bg = colors.diff_add })
        hl("@text.diff.delete", { bg = colors.git_delete })
        -- LSP
        hl("LspReferenceText", { bg = colors.bg_highlight })
        hl("LspReferenceRead", { bg = colors.bg_highlight })
        hl("LspReferenceWrite", { bg = colors.bg_highlight })
        hl("LspCodeLens", { fg = colors.comment })
        hl("LspCodeLensText", { fg = colors.comment })
        hl("LspCodeLensSign", { fg = colors.comment })
        hl("LspSignatureActiveParameter", { fg = colors.orange, bold = true })
        hl("LspInlayHint", { fg = colors.comment, italic = true })
        -- Diagnostics (LSP)
        hl("DiagnosticError", { fg = colors.error })
        hl("DiagnosticWarn", { fg = colors.warn })
        hl("DiagnosticInfo", { fg = colors.info })
        hl("DiagnosticHint", { fg = colors.hint })
        hl("DiagnosticUnderlineError", { sp = colors.error, undercurl = true })
        hl("DiagnosticUnderlineWarn", { sp = colors.warn, undercurl = true })
        hl("DiagnosticUnderlineInfo", { sp = colors.info, undercurl = true })
        hl("DiagnosticUnderlineHint", { sp = colors.hint, undercurl = true })
        hl("DiagnosticSignError", { fg = colors.error })
        hl("DiagnosticSignWarn", { fg = colors.warn })
        hl("DiagnosticSignInfo", { fg = colors.info })
        hl("DiagnosticSignHint", { fg = colors.hint })
        hl("DiagnosticFloatingError", { fg = colors.error })
        hl("DiagnosticFloatingWarn", { fg = colors.warn })
        hl("DiagnosticFloatingInfo", { fg = colors.info })
        hl("DiagnosticFloatingHint", { fg = colors.hint })
        hl("DiagnosticVirtualTextError", { fg = colors.error, italic = true })
        hl("DiagnosticVirtualTextWarn", { fg = colors.warn, italic = true })
        hl("DiagnosticVirtualTextInfo", { fg = colors.info, italic = true })
        hl("DiagnosticVirtualTextHint", { fg = colors.hint, italic = true })

        --PLUG:
        hl("GitSignsAdd", { fg = colors.green })
        hl("GitSignsChange", { fg = colors.orange })
        hl("GitSignsDelete", { fg = colors.red })
        hl("FlashMatch", { link = "Normal" })
        hl("FlashCurrent", { bg = colors.red })
        hl("FlashLabel", { fg = colors.error, bold = true })
        hl("BlinkCmpKind", { fg = colors.hint, bold = true })

        hl("TelescopeSelection", { bg = colors.indent_guide_active })
        hl("TelescopeSelectionCaret", { link = "TelescopeSelection" })
        hl("TelescopeMatching", { fg = colors.white })
        hl("TelescopeBorder", { bg = colors.bg, fg = colors.border })

        hl("NvimTreeIndentMarker", { link = "Comment" })
        hl("NvimTreeGitFolderDirtyHL", { fg = colors.keyword })
        hl("NvimTreeGitFileDirtyHL", { link = "NvimTreeGitFolderDirtyHL" })
        hl("NvimTreeGitFileNewHL", { fg = colors.green1 })
        hl("AlphaHeader", { fg = colors.miku })
end

m39k()
