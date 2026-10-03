return {
    {
        "neovim/nvim-lspconfig",
        config = function()
            vim.lsp.enable({
                "lua_ls",
                "ts_ls",
                "cssls",
                "html",
                "clangd"
            })
        end,
    },
}
