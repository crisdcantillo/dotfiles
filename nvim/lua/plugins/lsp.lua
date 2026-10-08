return {
    {
        "neovim/nvim-lspconfig",
        config = function()
            vim.lsp.enable({
                "lua_ls",
                "tsc",
                "cssls",
                "html",
                "clangd",
            })
        end,
    },
}
