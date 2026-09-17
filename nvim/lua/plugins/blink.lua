return {
    'saghen/blink.cmp',
    event = 'VimEnter',
    version = '1.*',

    opts = {
      keymap = {
        preset = 'default',
      },

      completion = {
        documentation = { auto_show = false, auto_show_delay_ms = 500 },
      },

      sources = {
        default = { 'lsp', 'path', 'lazydev' },
        providers = {
          lazydev = { module = 'lazydev.integrations.blink', score_offset = 100 },
        },
      },

      signature = { enabled = true },
    },
}
