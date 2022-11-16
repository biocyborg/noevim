require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = { "tsserver", "pyright" },
  automatic_installation = true,
})

local lspconfig = require("lspconfig")

-- 安装列表
-- { key: 服务器名， value: 配置文件 }
-- key 必须为下列网址列出的 server name，不可以随便写
local servers = {
  tsserver = require("lsp.config.ts"),
  -- html = require("lsp.config.html"),
  -- cssls = require("lsp.config.css"),
  -- jsonls = require("lsp.config.json"),
}


for name, config in pairs(servers) do
  if config ~= nil and type(config) == "table" then
    config.on_setup(lspconfig[name])
  else
    lspconfig[name].setup({})
  end
end
