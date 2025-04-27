local function hl(group, opts)
        vim.api.nvim_set_hl(0, group, opts)
end

local colors = {
        miku = "#ACB5DE",
        white = "#f8f8f8",
        purple0 = "#b392f0",
        blue1 = "#79b8ff",

        fg = "#888888",
        white0 = "#FFFFFF",

        bg0 = "#000000",
        bg1 = "#1F1F1F",
        bg2 = "#1A1A1A",
        bg3 = "#292929",
        bg4 = "#212121",

        line_highlight = "#303030",
        indent_guide_active = "#383838",
        border = "#444444",
        gray = "#727272",
        comment = "#6b737c",
        medium_gray = "#bbbbbb",
        light_gray = "#F5F5F5",

        orange = "#FF9800",
        yellow = "#ffab70",
        search1 = "#FCE094",

        link_blue = "#1976D2",
        visual_bule = "#264F78",
        green1 = "#0FBC7A",
        greenaaa = "#9db1c5",
        search2 = "#63341D",

        red0 = "#f50000",
        red = "#cd3131",
        error = "#cd3131",

        red1 = "#FF7B72",
        keyword = "#f97583",
        pink = "#FF7A84",

        diff_rm_bg = "#4E201E",
        diff_text = "#a12237",
        diff_addbg = "#39482B",

        diffDelebg = "#292929",
        diffDelete = "#494949",

        --TODO: lsp diff
        warn = "#FF9800",
        info = "#316bcd",
        diff_add = "#1B7F37",
        diff_change = "#2b6bab",
        git_delete = "#cd3131",
        git_change = "#d68349",
        git_ignored = "#444444",

        --NOTE: none
        -- seaaa = "#515C6A",
        -- ruler = "#2A2A2A",
        --  min dakr diff remove bg #691B24 difffff = "#611B27",
}

local function m39k()
        vim.cmd("hi clear")
        if vim.fn.exists("syntax_on") then
                vim.cmd("syntax reset")
        end
        vim.o.background = "dark"
        vim.g.colors_name = "39dark"

        -- UI
        hl("Normal", { fg = colors.fg, bg = colors.bg1 })
        hl("NormalFloat", { fg = colors.fg, bg = colors.bg2 })
        hl("FloatBorder", { fg = colors.border, bg = colors.bg2 })
        hl("CursorLine", { bg = colors.line_highlight })
        hl("CursorColumn", { bg = colors.line_highlight })
        hl("Cursor", { fg = colors.bg1, bg = colors.fg })
        hl("LineNr", { fg = colors.gray })
        hl("CursorLineNr", { fg = colors.white })
        hl("SignColumn", { fg = colors.gray, bg = colors.bg1 })
        hl("ColorColumn", { bg = colors.line_highlight })
        hl("StatusLine", { fg = colors.gray, bg = colors.bg2 })
        hl("StatusLineNC", { fg = colors.gray, bg = colors.bg2 })
        hl("VertSplit", { fg = colors.border, bg = colors.border })
        hl("Pmenu", { fg = colors.fg, bg = colors.bg2 })
        hl("PmenuSel", { fg = colors.light_gray, bg = colors.bg4 })
        hl("PmenuSbar", { bg = colors.bg2 })
        hl("PmenuThumb", { bg = colors.gray })
        hl("TabLine", { fg = colors.gray, bg = colors.bg2 })
        hl("TabLineFill", { bg = colors.bg2 })
        hl("TabLineSel", { fg = colors.light_gray, bg = colors.bg1 })
        hl("Visual", { bg = colors.visual_bule })
        hl("VisualNOS", { bg = colors.red })
        hl("Search", { bg = colors.search2, fg = colors.bg0 })
        hl("CurSearch", { bg = colors.green1, fg = colors.bg0 })
        hl("IncSearch", { bg = colors.red0, fg = colors.bg0 })
        hl("MatchParen", { bg = colors.search1, fg = colors.bg0 })
        hl("Directory", { fg = colors.purple0 })
        hl("Folded", { fg = colors.gray, bg = colors.bg3 })
        hl("FoldColumn", { fg = colors.gray, bg = colors.bg1 })
        hl("NonText", { fg = colors.gray })
        hl("EndOfBuffer", { fg = colors.gray })
        hl("SpecialKey", { fg = colors.gray })
        hl("Title", { fg = colors.blue1, bold = true })
        hl("Question", { fg = colors.purple0 })
        hl("MoreMsg", { fg = colors.purple0 })
        hl("ModeMsg", { fg = colors.fg })
        hl("ErrorMsg", { fg = colors.error })
        hl("WarningMsg", { fg = colors.warn })
        hl("WildMenu", { fg = colors.light_gray, bg = colors.bg3 })
        hl("Conceal", { fg = colors.comment })
        hl("Whitespace", { fg = colors.border })

        -- Syntax
        hl("Comment", { fg = colors.comment, italic = true })
        hl("String", { fg = colors.yellow })
        hl("Character", { fg = colors.yellow })
        hl("Number", { fg = colors.blue1 })
        hl("Float", { fg = colors.white })
        hl("Boolean", { fg = colors.purple0 })
        hl("Keyword", { fg = colors.keyword })
        hl("Operator", { fg = colors.medium_gray })
        hl("Function", { fg = colors.blue1 })
        hl("Type", { fg = colors.blue1 })
        hl("Constant", { fg = colors.purple0 })
        hl("Identifier", { fg = colors.light_gray })
        hl("Statement", { fg = colors.keyword })
        hl("Conditional", { fg = colors.keyword })
        hl("Repeat", { fg = colors.keyword })
        hl("Label", { fg = colors.keyword })
        hl("Exception", { fg = colors.keyword })
        hl("PreProc", { fg = colors.blue1 })
        hl("Include", { fg = colors.keyword })
        hl("Define", { fg = colors.keyword })
        hl("Special", { fg = colors.purple0 })
        hl("SpecialChar", { fg = colors.yellow })
        hl("Delimiter", { fg = colors.medium_gray })
        hl("Tag", { fg = colors.purple0 })
        hl("Debug", { fg = colors.error })
        hl("Underlined", { fg = colors.link_blue, underline = true })
        hl("Error", { fg = colors.error })
        hl("Todo", { fg = colors.light_gray, bg = colors.bg3, bold = true })
        hl("Macro", { fg = colors.medium_gray })
        hl("StorageClass", { fg = colors.keyword })
        hl("Structure", { fg = colors.blue1 })
        hl("Typedef", { fg = colors.blue1 })
        hl("SpecialComment", { fg = colors.comment, italic = true })

        -- Treesitter
        hl("@comment", { fg = colors.comment, italic = true })
        hl("@string", { fg = colors.yellow })
        hl("@string.regex", { fg = colors.blue1 })
        hl("@string.regexp", { fg = colors.blue1 })
        hl("@string.escape", { fg = colors.purple0, bold = true })
        hl("@string.special.symbol", { fg = colors.purple0 })
        hl("@character", { fg = colors.yellow })
        hl("@character.special", { fg = colors.yellow })
        hl("@number", { fg = colors.blue1 })
        hl("@number.float", { fg = colors.blue1 })
        hl("@boolean", { fg = colors.purple0 })
        hl("@function", { fg = colors.blue1 })
        hl("@function.call", { fg = colors.blue1 })
        hl("@function.builtin", { fg = colors.blue1 })
        hl("@function.macro", { fg = colors.blue1 })
        hl("@function.method", { fg = colors.blue1 })
        hl("@function.method.call", { fg = colors.blue1 })
        hl("@method", { fg = colors.blue1 })
        hl("@method.call", { fg = colors.blue1 })
        hl("@constructor", { fg = colors.blue1 })
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
        hl("@label", { fg = colors.purple0 })
        hl("@include", { fg = colors.keyword })
        hl("@exception", { fg = colors.keyword })
        hl("@type", { fg = colors.blue1 })
        hl("@type.builtin", { fg = colors.blue1 })
        hl("@type.definition", { fg = colors.blue1 })
        hl("@type.qualifier", { fg = colors.keyword })
        hl("@storageclass", { fg = colors.keyword })
        hl("@attribute", { fg = colors.orange })
        hl("@field", { fg = colors.purple0 })
        hl("@property", { fg = colors.white })
        hl("@variable", { fg = colors.light_gray })
        hl("@variable.builtin", { fg = colors.purple0 })
        hl("@variable.member", { fg = colors.blue1 })
        hl("@constant", { fg = colors.purple0 })
        hl("@constant.builtin", { fg = colors.purple0 })
        hl("@constant.macro", { fg = colors.purple0 })
        hl("@namespace", { fg = colors.blue1 })
        hl("@symbol", { fg = colors.purple0 })
        hl("@text", { fg = colors.fg })
        hl("@text.strong", { fg = colors.pink, bold = true })
        hl("@text.emphasis", { italic = true })
        hl("@text.underline", { underline = true })
        hl("@text.strike", { strikethrough = true })
        hl("@text.title", { fg = colors.pink, bold = true })
        hl("@text.literal", { fg = colors.greenaaa })
        hl("@text.uri", { fg = colors.yellow, underline = true })
        hl("@text.math", { fg = colors.purple0 })
        hl("@text.reference", { fg = colors.purple0 })
        hl("@text.todo", { fg = colors.light_gray, bg = colors.bg3, bold = true })
        hl("@text.note", { fg = colors.info, bg = colors.bg3 })
        hl("@text.warning", { fg = colors.warn, bg = colors.bg3 })
        hl("@text.danger", { fg = colors.error, bg = colors.bg3 })
        hl("@tag", { fg = colors.purple0 })
        hl("@tag.attribute", { fg = colors.blue1 })
        hl("@tag.builtin", { fg = colors.yellow })
        hl("@tag.delimiter", { fg = colors.medium_gray })
        hl("@macro", { fg = colors.medium_gray })
        hl("@identifier", { fg = colors.comment })
        hl("@punctuation.delimiter", { fg = colors.medium_gray })
        hl("@punctuation.bracket", { fg = colors.medium_gray })
        hl("@punctuation.special", { fg = colors.medium_gray })
        hl("@operator", { fg = colors.medium_gray })
        hl("@error", { fg = colors.error })
        hl("@debug", { fg = colors.purple0 })

        --DONE:
        hl("DiffChange", { bg = colors.diff_rm_bg })
        hl("DiffText", { bg = colors.diff_text, fg = colors.white0 })
        hl("DiffAdd", { bg = colors.diff_addbg })
        hl("DiffDelete", { bg = colors.diffDelebg, fg = colors.diffDelete })
        hl("diffAdded", { fg = colors.diff_add })
        hl("diffRemoved", { fg = colors.git_delete })
        hl("diffChanged", { fg = colors.git_change })
        hl("@text.diff.add", { bg = colors.diff_add })
        hl("@text.diff.delete", { bg = colors.git_delete })

        --TODO:  LSP
        hl("LspReferenceText", { bg = colors.bg3 })
        hl("LspReferenceRead", { bg = colors.bg3 })
        hl("LspReferenceWrite", { bg = colors.bg3 })
        hl("LspCodeLens", { fg = colors.comment })
        hl("LspCodeLensText", { fg = colors.comment })
        hl("LspCodeLensSign", { fg = colors.comment })
        hl("LspSignatureActiveParameter", { fg = colors.orange, bold = true })
        hl("LspInlayHint", { fg = colors.comment, italic = true })
        -- Diagnostics (LSP)
        hl("DiagnosticError", { fg = colors.error })
        hl("DiagnosticWarn", { fg = colors.warn })
        hl("DiagnosticInfo", { fg = colors.info })
        hl("DiagnosticHint", { fg = colors.purple0 })
        hl("DiagnosticUnderlineError", { sp = colors.error, undercurl = true })
        hl("DiagnosticUnderlineWarn", { sp = colors.warn, undercurl = true })
        hl("DiagnosticUnderlineInfo", { sp = colors.info, undercurl = true })
        hl("DiagnosticUnderlineHint", { sp = colors.purple0, undercurl = true })
        hl("DiagnosticSignError", { fg = colors.error })
        hl("DiagnosticSignWarn", { fg = colors.warn })
        hl("DiagnosticSignInfo", { fg = colors.info })
        hl("DiagnosticSignHint", { fg = colors.purple0 })
        hl("DiagnosticFloatingError", { fg = colors.error })
        hl("DiagnosticFloatingWarn", { fg = colors.warn })
        hl("DiagnosticFloatingInfo", { fg = colors.info })
        hl("DiagnosticFloatingHint", { fg = colors.purple0 })
        hl("DiagnosticVirtualTextError", { fg = colors.error, italic = true })
        hl("DiagnosticVirtualTextWarn", { fg = colors.warn, italic = true })
        hl("DiagnosticVirtualTextInfo", { fg = colors.info, italic = true })
        hl("DiagnosticVirtualTextHint", { fg = colors.purple0, italic = true })

        --PLUG:
        hl("GitSignsAdd", { fg = colors.greenaaa })
        hl("GitSignsChange", { fg = colors.orange })
        hl("GitSignsDelete", { fg = colors.red })
        hl("FlashMatch", { link = "Normal" })
        hl("FlashCurrent", { bg = colors.red })
        hl("FlashLabel", { fg = colors.error, bold = true })
        hl("BlinkCmpKind", { fg = colors.purple0, bold = true })

        hl("TelescopeSelection", { bg = colors.indent_guide_active })
        hl("TelescopeSelectionCaret", { link = "TelescopeSelection" })
        hl("TelescopeMatching", { fg = colors.white })
        hl("TelescopeBorder", { bg = colors.bg1, fg = colors.border })

        hl("NvimTreeIndentMarker", { link = "Comment" })
        hl("NvimTreeGitFolderDirtyHL", { fg = colors.keyword })
        hl("NvimTreeGitFileDirtyHL", { link = "NvimTreeGitFolderDirtyHL" })
        hl("NvimTreeGitFileNewHL", { fg = colors.green1 })
        hl("AlphaHeader", { fg = colors.miku })
end

m39k()
