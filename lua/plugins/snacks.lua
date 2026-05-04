return {
  "folke/snacks.nvim",
  dependencies = { "amansingh-afk/milli.nvim" },
  opts = function()
    local splash = require("milli").load({ splash = "lighningtornado" })
    return {
      dashboard = {
        preset = {
          -- header = table.concat({
          --   [[ ▄ .▄ ▄▄▄· • ▌ ▄ ·. ▄▄▄ .▄▄▄]],
          --   [[██▪▐█▐█ ▀█ ·██ ▐███▪▀▄.▀·▀▄ █·]],
          --   [[██▀▐█▄█▀▀█ ▐█ ▌▐▌▐█·▐▀▀▪▄▐▀▀▄]],
          --   [[██▌▐▀▐█ ▪▐▌██ ██▌▐█▌▐█▄▄▌▐█•█▌]],
          --   [[▀▀▀ · ▀  ▀ ▀▀  █▪▀▀▀ ▀▀▀ .▀  ▀]],
          -- }, "\n"),
          header = table.concat(splash.frames[1], "\n"),
        },
        sections = {
          { section = "header" },
          { title = "Recent Files", section = "recent_files", indent = 2, padding = 2 },
          { title = "Hotkeys", section = "keys", indent = 2, padding = 2 },
          { section = "startup" },
        },
      },
      gitbrowse = {},
      indent = {},
      input = {},
      lazygit = {},
      notifier = {},
      quickfile = {},
      scope = {},
      scroll = {},
      statuscolumn = {},
      terminal = {},
      -- toggle = {},
      words = {},
      zen = {},
    }
  end,
  config = function(_, opts)
    require("snacks").setup(opts)
    require("milli").snacks({ splash = "lighningtornado", loop = true })
  end,
}
