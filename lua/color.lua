local opt = vim.opt
local fn = vim.fn

opt.cursorline = true
opt.termguicolors = true

local colorscheme = "everforest"

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)

if not status_ok then
    vim.notify("colorscheme: " .. colorscheme .. " 没有找到！")
    return
end
