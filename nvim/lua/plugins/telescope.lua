return {
    'nvim-telescope/telescope.nvim',
    dependencies = { 'nvim-lua/plenary.nvim' },
    opts = {
        defaults = {
            layout_strategy = "horizontal",
            layout_config = {
                horizontal = {
                    preview_width = 0.50,
                },
            },
        },
    },
}
