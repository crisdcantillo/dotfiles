return {
  {
    'folke/lazydev.nvim',
    ft = 'lua',
    opts = {
      library = {
        { path = '${3rd}/luv/library', words = { 'vim%.uv' } },
      },
    },
  },
  {
    'neovim/nvim-lspconfig',

    dependencies = {
      { 'mason-org/mason.nvim', opts = {} },

      {
        'mason-org/mason-lspconfig.nvim',
        opts = {
          ensure_installed = {
            'lua_ls',
            'ts_ls',
            'clangd',
            'html',
            'cssls',
          },
        },
      },

      {
        'WhoIsSethDaniel/mason-tool-installer.nvim',
        opts = {
          ensure_installed = { 'stylua' },
        },
      },

      'saghen/blink.cmp',
    },

    config = function()
      vim.lsp.config('lua_ls', {
        settings = {
          Lua = {
            completion = {
              callSnippet = 'Replace',
            },
          },
        },
      })

      vim.diagnostic.config({
        severity_sort = true,
        float = { border = 'rounded' },
        virtual_text = true,
      })
    end,
  },
}
