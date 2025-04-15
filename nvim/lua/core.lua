--NOTE: options
local opt = vim.opt
local keymap = vim.keymap.set
local cmd = vim.api.nvim_create_user_command
local autocmd = vim.api.nvim_create_autocmd
local key_opts = { noremap = true, silent = true }

opt.backup = false
opt.swapfile = false
opt.errorbells = false
opt.autochdir = false
opt.termguicolors = true
opt.splitright = true
opt.splitbelow = true
opt.number = true
opt.relativenumber = true
opt.numberwidth = 3
opt.smartindent = true -- 智能缩进
opt.copyindent = true -- 自动缩进时，复制已有的行的缩进结构
opt.hlsearch = true -- 高亮显示搜索的匹配结果，输入结束时才显示
opt.incsearch = true -- 高亮显示搜索的匹配过程，每输入一个字符，就自动跳到第一个匹配的结果：
opt.ignorecase = true -- 搜索时忽略大小写
opt.smartcase = true -- smart search
--
opt.wrap = false --no wrap
opt.linebreak = true -- wrap don't break words
opt.scrolloff = 5
opt.showtabline = 2 -- tabline,0:no
opt.laststatus = 3 --  one statusline
opt.signcolumn = "yes" -- sign colume
opt.list = true
opt.listchars = { tab = "  ", extends = "⟩", precedes = "⟨", trail = "·" } --("eol:↴,tab:»·,trail:·")
opt.fillchars = { eob = " " } -- hide  "~"
opt.completeopt = { "menu", "menuone", "noselect", "popup" } --for cmp
--set fold
opt.foldcolumn = "0" --show fold in line number
opt.foldlevel = 99 -- Using ufo provider need a large value, feel free to decrease the value
opt.foldlevelstart = 99
opt.foldenable = true
--
opt.expandtab = true -- tab->spaces
opt.shiftwidth = 8 -- the number of spaces inserted for each indentation
opt.tabstop = 8 -- 一个tab键所占的列数
opt.cursorline = true
opt.conceallevel = 0 -- Hide * ... 0: no ,1: leave space, 2:hide space

--NOTE: //
vim.g.rust_recommended_style = 0
vim.g.clipboard = {
        name = "OSC 52",
        copy = {
                ["+"] = require("vim.ui.clipboard.osc52").copy("+"),
                ["*"] = require("vim.ui.clipboard.osc52").copy("*"),
        },
        paste = {
                ["+"] = require("vim.ui.clipboard.osc52").paste("+"),
                ["*"] = require("vim.ui.clipboard.osc52").paste("*"),
        },
}
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.filetype.add({
        pattern = {
                [".*.typ"] = "typst",
                [".*.mdx"] = "markdown",
                [".*profile"] = "bash",
        },
})

--NOTE: LSP config

vim.keymap.del("", "grn")
vim.keymap.del("", "gra")
vim.keymap.del("", "grr")
vim.keymap.del("", "gri")

vim.diagnostic.config({
        virtual_text = false,
        signs = {
                text = {
                        --   󰌕   ✎   ▎ ▏ │             
                        [vim.diagnostic.severity.ERROR] = "▎",
                        [vim.diagnostic.severity.WARN] = "▎",
                        [vim.diagnostic.severity.HINT] = "",
                        [vim.diagnostic.severity.INFO] = "",
                },
        },
        update_in_insert = true,
        underline = true,
        severity_sort = true,
        float = {
                focusable = false,
                style = "minimal",
                border = "single",
                source = "if_many",
                header = "",
                prefix = "",
        },
})

--NOTE: lazy
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"
keymap("", "<Space>", "<Nop>", { noremap = true, silent = true })

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
        local lazyrepo = "https://github.com/folke/lazy.nvim.git"
        local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
        if vim.v.shell_error ~= 0 then
                vim.api.nvim_echo({
                        { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
                        { out, "WarningMsg" },
                        { "\nPress any key to exit..." },
                }, true, {})
                vim.fn.getchar()
                os.exit(1)
        end
end
opt.rtp:prepend(lazypath)

require("lazy").setup({
        spec = {
                { import = "plugins" },
        },
        ui = {
                border = "single",
        },
        install = {
                colorscheme = { "github_light" },
        },
        performance = {
                rtp = {
                        disabled_plugins = {
                                "2html_plugin",
                                "tohtml",
                                "getscript",
                                "getscriptPlugin",
                                "gzip",
                                "logipat",
                                "netrw",
                                "netrwPlugin",
                                "netrwSettings",
                                "netrwFileHandlers",
                                "matchit",
                                "tar",
                                "tarPlugin",
                                "rrhelper",
                                "spellfile_plugin",
                                "vimball",
                                "vimballPlugin",
                                "zip",
                                "zipPlugin",
                                "tutor",
                                "rplugin",
                                "syntax",
                                "synmenu",
                                "optwin",
                                "compiler",
                                "bugreport",
                                "ftplugin",
                        },
                },
        },
})

--NOTE: mode
-- insert_mode       = "i",
-- normal_mode       = "n",
-- term_mode         = "t",
-- visual_mode       = "v",
-- visual_block_mode = "x",
-- command_mode      = "c",
-- operator_mode     = "o",
-- select_mode       = "s"

keymap({ "i" }, "jk", "<esc>", key_opts)
keymap({ "n", "o" }, "L", "$", key_opts)
keymap({ "x" }, "L", "$h", key_opts)
keymap("", "H", "^", key_opts)
keymap("", "K", "2k", key_opts)
keymap("", "J", "2j", key_opts)
keymap("", ";;", "%", key_opts)
keymap("", ";z", "J", key_opts)
keymap("n", ";k", "<cmd>nohl<CR>", key_opts)
keymap("n", ";j", require("39.M").highlightCword, key_opts)
--buffers
keymap({ "n" }, "<leader>l", "<cmd>bn<cr>", key_opts)
keymap({ "n" }, "<leader>h", "<cmd>bp<cr>", key_opts)
keymap({ "n" }, "<leader>w", "<cmd>bd<cr>", key_opts)
-- Resize with arrows
keymap({ "n", "x" }, "<M-Up>", "<cmd>resize +2<CR>", key_opts)
keymap({ "n", "x" }, "<M-Down>", "<cmd>resize -2<CR>", key_opts)
keymap({ "n", "x" }, "<M-Left>", "<cmd>vertical resize -2<CR>", key_opts)
keymap({ "n", "x" }, "<M-Right>", "<cmd>vertical resize +2<CR>", key_opts)
-- Move  line / code block
keymap({ "n", "i" }, "<M-->", "<cmd>m .+1<CR>==", key_opts)
keymap({ "n", "i" }, "<M-=>", "<cmd>m .-2<CR>==", key_opts)
keymap({ "x" }, "<M-->", ":m '>+1<cr>gv=gv", key_opts)
keymap({ "x" }, "<M-=>", ":m '<-2<cr>gv=gv", key_opts)
keymap({ "n" }, "<", "<<", key_opts)
keymap({ "n" }, ">", ">>", key_opts)
keymap({ "x" }, "<", "<gv", key_opts)
keymap({ "x" }, ">", ">gv", key_opts)
--Plugin
keymap({ "n", "x" }, "f", require("flash").jump, key_opts)
keymap("n", "<leader>n", require("nvim-tree.api").tree.open, key_opts)
keymap("n", "<Leader>fm", require("telescope.builtin").marks, key_opts)
keymap("n", "<leader>fr", require("telescope.builtin").builtin, key_opts)
keymap("n", "<leader>fh", require("telescope.builtin").oldfiles, key_opts)
keymap("n", "<leader>fl", require("telescope.builtin").live_grep, key_opts)
keymap("n", "<leader>ff", require("telescope.builtin").find_files, key_opts)
keymap("n", "<Leader>fs", require("telescope.builtin").colorscheme, key_opts)
keymap("n", "<leader>fp", require("39.zoxide").zoxide, key_opts)
keymap("n", "<leader>fw", require("telescope.builtin").current_buffer_fuzzy_find, key_opts)
keymap({ "n" }, "<leader>m", require("39.M").run, key_opts)
keymap({ "n" }, "tx", require("39.M").trouble.close, key_opts)
keymap({ "n" }, "tj", require("39.M").trouble.next, key_opts)
keymap({ "n" }, "tk", require("39.M").trouble.prev, key_opts)
keymap("t", "<C-\\>", "<C-\\><C-N>", key_opts)

--NOTE: user command
cmd("FormatJSON", "%!python3 -m json.tool", {})
cmd("Bpwd", require("39.M").BufferPwd, {})
cmd("CBpwd", require("39.M").cdBufferPwd, {})

--NOTE: autocmd
autocmd("BufWritePre", {
        pattern = { "*.lua", "*.c", "*.cpp", "*.h", "*.rs", "*.go", "*.py", "*.js", "*.jsx", "*.ts", "*.tsx", "*.mjs" },
        callback = function()
                vim.lsp.buf.format({ sync = true })
        end,
        group = vim.api.nvim_create_augroup("AUTOFORMAT", { clear = true }),
})

autocmd({ "BufReadPost" }, {
        callback = function()
                require("39.lastplace").set_cursor_position()
        end,
        group = vim.api.nvim_create_augroup("LASTPLACE", { clear = true }),
})

autocmd("FileType", {
        pattern = { "markdown", "typst" },
        group = vim.api.nvim_create_augroup("WRITING", { clear = true }),
        callback = function()
                vim.opt_local.tabstop = 4
                vim.opt_local.shiftwidth = 4
                vim.opt_local.softtabstop = 4
                vim.opt_local.wrap = true
                keymap({ "x", "n" }, "j", "gj", { silent = true, buffer = true })
                keymap({ "x", "n" }, "k", "gk", { silent = true, buffer = true })
                keymap("", "H", "g^", { silent = true, buffer = true })
                keymap("", "L", "g$", { silent = true, buffer = true })
        end,
})

autocmd({ "FileType" }, {
        pattern = { "typst" },
        group = vim.api.nvim_create_augroup("TYPST", { clear = true }),
        callback = function()
                cmd("TypstFigures", "silent !mkdir figures", {})
        end,
})
