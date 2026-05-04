return {
  'nvim-treesitter/nvim-treesitter',
  lazy = false,
  build = ':TSUpdate',
  opts = {
    ensure_installed = { 'markdown', 'markdown_inline' },
  },
  config = function(_, opts)
    require('nvim-treesitter.configs').setup(opts)
  end,
}
