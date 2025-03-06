-- Load Mason and Mason-LSPConfig
require("mason").setup()
require("mason-lspconfig").setup({
    ensure_installed = { "pyright", "clangd" }, -- Install Python and C/C++ servers
})

-- Automatically set up installed servers
require("mason-lspconfig").setup_handlers({
    function(server_name) -- Default handler for all servers
        require("lspconfig")[server_name].setup({})
    end,
})
