return {
  "challenger-deep-theme/vim",
  lazy = true,
  priority = 1000,
  init = function()
    local group = vim.api.nvim_create_augroup("kevin_challenger_deep_snacks_picker", { clear = true })

    local function set_snacks_picker_highlights()
      if vim.g.colors_name ~= "challenger_deep" then
        return
      end

      local set = vim.api.nvim_set_hl
      local bg = "#1e1c31"
      local fg = "#cbe3e7"

      set(0, "SnacksPicker", { fg = fg, bg = bg })
      set(0, "SnacksPickerList", { fg = fg, bg = bg })
      set(0, "SnacksPickerInput", { fg = fg, bg = bg })
      set(0, "SnacksPickerPreview", { fg = fg, bg = bg })
      set(0, "SnacksPickerBox", { fg = fg, bg = bg })
      set(0, "SnacksPickerBorder", { fg = "#565575", bg = bg })
      set(0, "SnacksPickerTitle", { fg = "#65b2ff", bg = bg })
      set(0, "SnacksPickerListCursorLine", { bg = "#100E23" })
      set(0, "SnacksPickerDir", { fg = "#a6b3cc" })
    end

    vim.api.nvim_create_autocmd("ColorScheme", {
      group = group,
      callback = set_snacks_picker_highlights,
    })

    set_snacks_picker_highlights()
  end,
}
