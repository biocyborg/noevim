local vopt = vim.opt

-- 显示行号
vopt.number = true
-- 显示相对行号
vopt.relativenumber = true

-- 设置脚本编码格式
vim.scriptencoding = 'utf-8'
-- 设置编码格式
vopt.encoding = 'utf-8'
-- 设置文件编码格式
vopt.fileencoding = 'utf-8'

-- 使用jk移动光标时,上下保留的行数
vopt.scrolloff = 5
vopt.sidescrolloff = 5

-- 开启搜索匹配高亮
vopt.hlsearch = true
-- 边输入边搜索
vopt.incsearch = true

-- 打开鼠标功能
vopt.mouse = 'a'
-- 打开剪切板功能
vopt.clipboard:append("unnamedplus")

-- tab键转换为2个空格
vopt.tabstop = 2
vopt.softtabstop = 2
vopt.shiftwidth = 2
-- 新行对其当前行,tab转换为空格
vopt.expandtab = true
vopt.autoread = true
vim.bo.autoread = true

-- 正则表达式引擎忽略搜索模式的大小写
vopt.ignorecase = true
-- 搜索时自动判断是否需要忽略大小写
vopt.smartcase = true

-- 显示左侧图标指示列
vim.wo.signcolumn = "yes"

-- 右侧参考线，超过表示代码太长了，考虑换行
vim.wo.colorcolumn = "120"
