return {
  'saghen/blink.cmp',
  dependencies = {
      { "giuxtaposition/blink-cmp-copilot" },
  },
  lazy = false,
  version = 'v0.*',

  opts = {
    sources = {
      default = { "lsp", "path", "buffer", "copilot" },
      providers = {
        copilot = {
          name = "copilot",
          module = "blink-cmp-copilot",
          score_offset = 100,
          async = true,
        },
      },
    },
    signature = { enabled = true },
  },
}
