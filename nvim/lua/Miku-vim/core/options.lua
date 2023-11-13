--NOTE:
local opt          = vim.opt

opt.termguicolors  = true            --true color
opt.scrolloff      = 5               --scroll 时留下五行
opt.cursorline     = false           --编辑行下划线
opt.wrap           = false           --no wrap
opt.linebreak      = true            --换行显示时不把一个单词拆开，遇到指定的符号（比如空格，连词号和其他标点符号）才换行
opt.numberwidth    = 3               --行号宽度
opt.number         = true            --显示行号
opt.relativenumber = true            --相对行数
opt.signcolumn     = 'yes'           -- sign colume
opt.list           = true            -- 显示空白的符号
opt.fillchars      = ({ eob = ' ' }) -- hide the "~" at the start of an empty line
opt.listchars      = ("trail:·,tab:  ")
-- opt.listchars      = ("eol:↴,tab:»·,trail:·")
opt.showtabline    = 0 -- don't showtabline
-- opt.laststatus     = 3 --always show statusline on the bottom
-- opt.autochdir      = true
--
opt.backup         = false --禁止生成临时文件
opt.swapfile       = false
opt.errorbells     = false --关闭错误信息响铃
opt.fileencodings  = 'utf-8'
--

opt.autowrite      = true                              --Enable auto write
opt.grepprg        = 'rg --vimgrep'                    --use rg
--
opt.shiftwidth     = 8                                 -- the number of spaces inserted for each indentation
opt.tabstop        = 8                                 --一个tab键所占的列数
opt.expandtab      = true                              --自动将tab键输入转化为相应的空格数
opt.smartindent    = true                              --智能缩进-
opt.autoindent     = true                              --回车后下一行自动缩进
opt.copyindent     = true                              --复制粘贴时保留原有的缩进
--
opt.ignorecase     = true                              --搜索时忽略大小写
opt.hlsearch       = true                              --高亮显示搜索的匹配结果，输入结束时才显示
opt.incsearch      = true                              --高亮显示搜索的匹配过程，每输入一个字符，就自动跳到第一个匹配的结果：
opt.smartcase      = true                              --智能搜索
opt.completeopt    = { 'menu', 'menuone', 'noselect' } --for cmp
opt.showcmd        = true                              --显示输入命令
opt.wildmenu       = true                              --在命令模式下，按下 tab 键可以自动补全命令
opt.wildmode       = 'longest:list,full'
--set fold
--opt.foldcolumn = 1 --show fold in line number
opt.foldlevel      = 99 -- Using ufo provider need a large value, feel free to decrease the value
opt.foldlevelstart = 99
opt.foldenable     = true
opt.foldmethod     = 'expr'
opt.foldexpr       = 'nvim_treesitter#foldexpr()'


vim.g.rust_recommended_style = 0
vim.filetype.add({
        pattern = {
                [".*.typ"] = 'typst',
        },
})
