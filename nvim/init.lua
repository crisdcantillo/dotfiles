require("core.options")
require("core.keymaps")
require("core.commands")

-- clones lazy repo
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not (vim.uv or vim.loop).fs_stat(lazypath) then
    local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
    local out = vim.fn.system { 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath }
    if vim.v.shell_error ~= 0 then
        error('Error cloning lazy.nvim:\n' .. out)
    end
end

---@type vim.Option
local rtp = vim.opt.rtp
rtp:prepend(lazypath)

-- init plugins
require("lazy").setup({
    require("plugins.lsp"), -- modified config from Kickstart
    require("plugins.blink"), -- modified config from Kickstart
    require("plugins.treesitter"),
    require("plugins.telescope"),
    require("plugins.neotree"),
    require("plugins.fugitive"),
    require("plugins.gitsigns"),
    require("plugins.theme")
})

vim.cmd("colorscheme kanagawa-dragon")
