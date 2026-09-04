local mason = require("mason")
local capabilities = require("cmp_nvim_lsp").default_capabilities()

mason.setup()

vim.lsp.config("clangd", {
    capabilities = capabilities,
})

vim.lsp.enable("clangd")
