local function hl(group, properties)
        vim.api.nvim_set_hl(0, group, properties)
end

local colors = {
        miku = "#1F30C8",
        cyan2 = "#248f8f",
        cyan0 = "#00627A",
        cyan3 = "#3377aa",
        cyan4 = "#36666b",
        cyan5 = "#286d73",
        cyan1 = "#88aa99",

        purple0 = "#871094",
        purple1 = "#45164F",

        bg0 = "#FFFFFF",
        bg1 = "#F6F8FE",
        bg2 = "#F7F8FA",
        bg3 = "#EBECF0",
        bg4 = "#D6D6D6",
        bg5 = "#D5E1FF",

        fg1 = "#AEB3C2",
        fg2 = "#8C8C8C",
        fg0 = "#080808",

        green0 = "#10B981",
        green1 = "#1B7F37",
        green2 = "#077D18",
        green3 = "#BEE6BE",
        green4 = "#E9F5E6",

        red7=  "#C33720",
        red0 = "#f50000",
        red6 = "#F40A3F",
        red1 = "#DC2626",
        red2 = "#CE0606",
        red3 = "#D3353F",
        red4 = "#de0202",
        red5 = "#FFEEEB",

        blue0 = "#152F44",
        blue1 = "#0137A6",
        blue2 = "#0133B3",
        blue3 = "#264eff",
        blue9 = "#0E54D6", -- NO
        blue7 = "#174be6",
        blue4 = "#1750EB",
        blue5 = "#0A69DA",
        blueB = "#8cb1de",
        blue6 = "#A6D2FF",
        blue8 = "#B4D7FF",
        blueA = "#C2D8F3",

        orange = "#b86114",

        brown2 = "#805900", --___package
        brown0 = "#9E880D",
        brown1 = "#B28B00",

        yellow0 = "#e6bc05",
        yellow1 = "#F2BF56",
        yellow2 = "#FCD57E",
        yellow3 = "#FEE6B1",
        yellow4 = "#F7E6A0",

        -- ___keywrd4 = "#800000",
        -- ___variabl = "#7f0000",
        -- ___keyword = "#3333bb",
        -- _attribute = "#174ad4",
        -- _reference = "#336ecc",
        -- regexpPaeter="#297bde",
        -- _ic_method = "#662277",
        -- kdAtributs = "#74118c",
        -- glVariable = "#830091",
        -- cAtributes = "#851691",
        -- ctag_value = "#3d3d3d",
        -- _ttributes = "#414d41",
}

local function m39k()
        vim.cmd("hi clear")
        if vim.fn.exists("syntax_on") then
                vim.cmd("syntax reset")
        end
        vim.o.background = "light"
        vim.g.colors_name = "39light"

        -- UI
        hl("Normal", { fg = colors.fg0, bg = colors.bg0 })
        hl("NormalFloat", { bg = colors.bg2 })
        hl("FloatBorder", { bg = colors.bg2, fg = colors.bg3 })
        hl("LineNr", { fg = colors.fg1 })
        hl("EndOfBuffer", { link = "Whitespace" })
        hl("WildMenu", { bg = colors.bg2 })
        hl("Pmenu", { bg = colors.bg2 })
        hl("PmenuSel", { bg = colors.bg5 })
        hl("PmenuSbar", { bg = colors.bg2 })
        hl("PmenuThumb", { bg = colors.bg2 })
        hl("PmenuMatch", { bold = true })
        hl("PmenuMatchSel", { bold = true })
        hl("TabLine", { bg = colors.bg2 })
        hl("TabLineSel", { fg = colors.red1, bg = colors.bg0, bold = true })
        hl("CursorLine", { bg = colors.bg1 })
        hl("ColorColumn", { link = "CursorLine" })
        hl("StatusLine", { fg = colors.blue3 })
        hl("StatusLineNC", { link = "StatusLine" })
        hl("Folded", { bg = colors.green4 })
        hl("Search", { bg = colors.yellow2 })
        hl("CurSearch", { bg = colors.green0 })
        hl("IncSearch", { bg = colors.red1 })
        hl("MatchParen", { bg = colors.blue6 })
        hl("Visual", { bg = colors.blue8 })
        hl("Directory", { fg = colors.fg0 })
        hl("Whitespace", { fg = colors.bg3 }) --indent line
        hl("WinSeparator", { link = "Whitespace" })
        hl("MsgSeparator", { link = "CursorLine" })
        hl("WarningMsg", { fg = colors.orange })
        hl("ErrorMsg", { fg = colors.red1 })
        hl("ModeMsg", { bg = colors.bg0, fg = colors.bg0 })

        -- Syntax
        hl("Title", { link = "Number" })
        hl("Todo", { fg = colors.red0 })
        hl("Underlined", { underline = true })
        hl("Operator", { fg = colors.fg0 })
        hl("Comment", { fg = colors.fg2, italic = false })
        hl("Function", { fg = colors.cyan0 })
        hl("Keyword", { fg = colors.blue2,bold=true })
        hl("String", { fg = colors.green2 })
        hl("Number", { fg = colors.blue4 })
        hl("PreProc", { fg = colors.blue3 })
        hl("Type", { fg = colors.blue0 })
        hl("Statement", { fg = colors.blue7 })
        hl("Identifier", { fg = colors.fg0 })
        hl("Special", { fg = colors.fg0 })
        hl("Constant", { fg = colors.blue2 })
        hl("Error", { fg = colors.red0 })
        --TODO:
        -- shl("Character",      { fg = colors.yellow })
        -- shl("Float",          { fg = colors.white })
        -- shl("Boolean",        { fg = colors.blue })
        -- shl("Conditional",    { fg = colors.keyword })
        -- shl("Repeat",         { fg = colors.keyword })
        -- shl("Label",          { fg = colors.keyword })
        -- shl("Exception",      { fg = colors.keyword })
        -- shl("Include",        { fg = colors.keyword })
        -- shl("Define",         { fg = colors.keyword })
        -- shl("SpecialChar",    { fg = colors.yellow })
        -- shl("Delimiter",      { fg = colors.medium_gray })
        -- shl("Tag",            { fg = colors.blue })
        -- shl("Debug",          { fg = colors.error })
        -- shl("Macro",          { fg = colors.medium_gray })
        -- shl("StorageClass",   { fg = colors.keyword })
        -- shl("Structure",      { fg = colors.accent })
        -- shl("Typedef",        { fg = colors.accent })
        -- shl("SpecialComment", { fg = colors.comment, italic = true })

        hl("DiagnosticError", { fg = colors.red1 })
        hl("DiagnosticWarn", { fg = colors.orange })
        hl("DiagnosticInfo", { fg = colors.blue5 })
        hl("DiagnosticHint", { fg = colors.green0 })
        hl("DiagnosticUnderlineError", { undercurl = true, sp = colors.red0 })
        hl("DiagnosticUnderlineWarn", { undercurl = true, sp = colors.yellow1 })
        hl("DiagnosticUnderlineInfo", { undercurl = true, sp = colors.blue5 })
        hl("DiagnosticUnderlineHint", { undercurl = true, sp = colors.green0 })
        hl("DiffChange", { bg = colors.blueA })
        hl("DiffAdd", { bg = colors.green3, fg = colors.green1 })
        hl("DiffText", {  bg=colors.blueB,fg=colors.red4})
        hl("DiffDelete", { bg = colors.bg4, fg = colors.fg2 })
        hl("diffAdded", { fg = colors.green2 })
        hl("diffRemoved", { fg = colors.red2 })
        hl("diffChanged", { fg = colors.brown1 })

        --PLUG: Treesitter highlights
        hl("@markup.heading.1.markdown", { fg = colors.purple0, bold = true })
        hl("@markup.heading.2.markdown", { fg = colors.blue3, bold = true })
        hl("@markup.heading.3.markdown", { fg = colors.blue3, bold = true })
        hl("@markup.heading.4.markdown", { fg = colors.blue3, bold = true })
        hl("@markup.heading.5.markdown", { fg = colors.blue3, bold = true })
        hl("@markup.heading.6.markdown", { fg = colors.blue3, bold = true })
        hl("@markup.strong.markdown_inline", { fg = colors.blue2, bold = true })

        hl("@comment", { link = "Comment" })
        hl("@number", { link = "Number" })
        hl("@operator", { link = "Operator" })

        hl("@type", { link = "Type" })
        hl("@type.builtin", { fg = colors.blue2 })

        hl("@keyword", { link = "Keyword" })
        hl("@keyword.import", { fg = colors.purple0 })

        hl("@function", { link = "Function" })
        hl("@function.builtin", { link = "Function" })

        hl("@variable", { fg = colors.blue0 })
        hl("@variable.builtin", { fg = colors.fg0 })

        hl("@string", { link = "String" })
        hl("@string.escape", { fg = colors.brown0 })
        hl("@string.regexp", { fg = colors.brown2 })

        hl("@boolean", { fg = colors.brown1 })
        hl("@constant", { link = "Constant" })
        hl("@constant.builtin", { link = "Constant" })
        hl("@constant.macro", { link = "Constant" })

        -- shl("@class", { fg = colors.fg0 })
        -- shl("@method", { link = "Function" })
        -- shl("@field", { link = "Keyword" })
        -- shl("@interface", { fg = colors.fg0 })
        -- shl("@namespace", { fg = colors.red1 })

        -- shl("@tag", { fg = colors.green0 })
        -- shl("@tag.attribute", { link = "@tag" })
        -- shl("@tag.delimiter", { link = "@tag" })

        -- shl("@property", { link = "@variable" })
        -- shl("@constructor", { link = "Function" })
        -- shl("@punctuation", { fg = colors.fg0 })
        -- shl("@parameter", { fg = colors.fg0 })
        -- shl("@attribute", { fg = colors.orange })

        -- shl("LspReferenceText", { bg = colors.fg2 })
        -- shl("LspReferenceRead", { bg = colors.fg2 })
        -- shl("LspReferenceWrite", { bg = colors.fg2 })

        --DONE: lsp
        hl("@lsp.typemod.variable.functionScope", { fg = colors.blue0 })
        hl("@keyword.directive", { fg = colors.brown0 })
        hl("@lsp.type.property", { fg = colors.blue1 })
        hl("@lsp.typemod.keyword.documentation", { fg = colors.brown0 })
        hl("@function.macro", { fg = colors.cyan3 }) -- rust
        hl("@lsp.typemod.builtinAttribute.attribute", { fg = colors.brown2 }) -- rust

        --DONE: treesitter
        hl("@tag.attribute", { fg = colors.blue1 })
        hl("@variable.member", { fg = colors.blue2 }) -- lua table
        hl("@_jsx_attribute.tsx", { fg = colors.brown2 })

        --PLUG:
        hl("GitSignsAdd", { fg = colors.green0 })
        hl("GitSignsChange", { fg = colors.orange })
        hl("GitSignsDelete", { fg = colors.red1 })
        hl("FlashMatch", { link = "Normal" })
        hl("FlashCurrent", { bg = colors.red1 })
        hl("FlashLabel", { fg = colors.red4, bold = true })
        hl("BlinkCmpKind", { fg = colors.purple0, bold = true })
        hl("TelescopeSelection", { bg = colors.bg5 })
        hl("TelescopeSelectionCaret", { link = "TelescopeSelection" })
        hl("TelescopeMatching", { bg = colors.yellow3 })
        hl("TelescopeBorder", { bg = colors.bg, fg = colors.fg2 })
        hl("NvimTreeIndentMarker", { link = "Comment" })
        hl("NvimTreeGitFolderDirtyHL", { link = "diffRemoved" })
        hl("NvimTreeGitFileDirtyHL", { link = "NvimTreeGitFolderDirtyHL" })
        hl("NvimTreeGitFileNewHL", { fg = colors.green0 })
        hl("AlphaHeader", { fg = colors.miku })

        vim.g.terminal_color_background = colors.bg0
        vim.g.terminal_color_foreground = colors.fg0
        vim.g.terminal_color_0 = colors.bg
        vim.g.terminal_color_1 = colors.red4
        vim.g.terminal_color_2 = colors.green2
        vim.g.terminal_color_3 = colors.yellow1
        vim.g.terminal_color_4 = colors.blue2
        vim.g.terminal_color_5 = colors.purple0
        vim.g.terminal_color_6 = colors.blue3
        vim.g.terminal_color_7 = colors.fg
        vim.g.terminal_color_8 = colors.fg
        vim.g.terminal_color_9 = colors.red4
        vim.g.terminal_color_10 = colors.purple0
        vim.g.terminal_color_11 = colors.yellow0
        vim.g.terminal_color_12 = colors.cyan0
        vim.g.terminal_color_13 = colors.red0
        vim.g.terminal_color_14 = colors.yellow2
        vim.g.terminal_color_15 = colors.fg2
end

m39k()
