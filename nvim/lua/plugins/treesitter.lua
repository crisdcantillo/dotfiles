return {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    build = ":TSUpdate",

    config = function()
        require("nvim-treesitter").install({
            "lua",
            "javascript",
            "typescript",
            "html",
            "css",
        })

        vim.api.nvim_create_autocmd("FileType", {
            pattern = {
                "lua",
                "javascript",
                "typescript",
                "html",
                "css",
            },
            callback = function()
                vim.treesitter.start()
            end,
        })
    end,
}
