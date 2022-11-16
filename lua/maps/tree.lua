local opt = {
    noremap = true,
    silent = true
}

-- 本地变量
local map = vim.api.nvim_set_keymap

map("n", "<A-m>", ":NvimTreeToggle<CR>", opt)
map("n", "<leader>m", ":NvimTreeToggle<CR>", opt)

local treekeys = { -- 打开文件或文件夹
{
    key = {"o", "<2-LeftMouse>"},
    action = "edit"
}, {
    key = "<CR>",
    action = "system_open"
}, -- v分屏打开文件
{
    key = "v",
    action = "vsplit"
}, -- h分屏打开文件
{
    key = "h",
    action = "split"
}, -- Ignore (node_modules)
{
    key = "i",
    action = "toggle_ignored"
}, -- Hide (dotfiles)
{
    key = ".",
    action = "toggle_dotfiles"
}, {
    key = "R",
    action = "refresh"
}, -- 文件操作
{
    key = "a",
    action = "create"
}, {
    key = "d",
    action = "remove"
}, {
    key = "r",
    action = "rename"
}, {
    key = "x",
    action = "cut"
}, {
    key = "c",
    action = "copy"
}, {
    key = "p",
    action = "paste"
}, {
    key = "y",
    action = "copy_name"
}, {
    key = "Y",
    action = "copy_path"
}, {
    key = "gy",
    action = "copy_absolute_path"
}, {
    key = "I",
    action = "toggle_file_info"
}, {
    key = "n",
    action = "tabnew"
}, -- 进入下一级
{
    key = {"]"},
    action = "cd"
}, -- 进入上一级
{
    key = {"["},
    action = "dir_up"
}}

return treekeys
