return {
  "folke/snacks.nvim",
  opts = {
    dashboard = {
      preset = {
        header = table.concat({
          [[ ▄ .▄ ▄▄▄· • ▌ ▄ ·. ▄▄▄ .▄▄▄]],
          [[██▪▐█▐█ ▀█ ·██ ▐███▪▀▄.▀·▀▄ █·]],
          [[██▀▐█▄█▀▀█ ▐█ ▌▐▌▐█·▐▀▀▪▄▐▀▀▄]],
          [[██▌▐▀▐█ ▪▐▌██ ██▌▐█▌▐█▄▄▌▐█•█▌]],
          [[▀▀▀ · ▀  ▀ ▀▀  █▪▀▀▀ ▀▀▀ .▀  ▀]],
        }, "\n"),
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
  },
}
