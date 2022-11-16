local opt = {
    noremap = true,
    silent = true
}

local typescriptkeys = function(map)
    map("n", "gs", ":TSLspOrganize<CR>", opt)
    map("n", "gR", ":TSLspRenameFile<CR>", opt)
    map("n", "gi", ":TSLspImportAll<CR>", opt)
end

return typescriptkeys
