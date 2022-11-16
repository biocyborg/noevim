local opt = {
  noremap = true,
  silent = true,
}

local lspkeys = function(map)
    -- rename
    --[[
  Lspsaga 替换 rn
  map("n", "<leader>rn", "<cmd>Lspsaga rename<CR>", opt)
  --]]
    map("n", "<leader>rn", "<cmd>lua vim.lsp.buf.rename()<CR>", opt)
    -- code action
    --[[
  Lspsaga 替换 ca
  map("n", "<leader>ca", "<cmd>Lspsaga code_action<CR>", opt)
  --]]
    map("n", "<leader>ca", "<cmd>lua vim.lsp.buf.code_action()<CR>", opt)
    -- go xx
    --[[
    map('n', 'gd', '<cmd>Lspsaga preview_definition<CR>', opt)
  map("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", opt)
  --]]
    map("n", "gd", "<cmd>lua require'telescope.builtin'.lsp_definitions({ initial_mode = 'normal', })<CR>", opt)
    --[[
  map("n", "gh", "<cmd>Lspsaga hover_doc<cr>", opt)
  Lspsaga 替换 gh
  --]]
    map("n", "gh", "<cmd>lua vim.lsp.buf.hover()<CR>", opt)
    --[[
  Lspsaga 替换 gr
  map("n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>", opt)
  --]]
    map("n", "gr", "<cmd>Lspsaga lsp_finder<CR>", opt)
    --[[
  Lspsaga 替换 gp, gj, gk
  map("n", "gp", "<cmd>lua vim.diagnostic.open_float()<CR>", opt)
  map("n", "gj", "<cmd>lua vim.diagnostic.goto_next()<CR>", opt)
  map("n", "gk", "<cmd>lua vim.diagnostic.goto_prev()<CR>", opt)
  --]]
    -- diagnostic
    map("n", "gp", "<cmd>Lspsaga show_line_diagnostics<CR>", opt)
    map("n", "gj", "<cmd>Lspsaga diagnostic_jump_next<cr>", opt)
    map("n", "gk", "<cmd>Lspsaga diagnostic_jump_prev<cr>", opt)
    map("n", "<leader>f", "<cmd>lua vim.lsp.buf.formatting()<CR>", opt)
    -- 未用
    -- map("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", opt)
    -- map("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", opt)
    -- map('n', '<leader>q', '<cmd>lua vim.diagnostic.setloclist()<CR>', opt)
    -- map("n", "<C-k>", "<cmd>lua vim.lsp.buf.signature_help()<CR>", opt)
    -- map('n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opt)
    -- map('n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opt)
    -- map('n', '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opt)
    -- map('n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opt)
end

return lspkeys;
