# nvim config

Personal Neovim config. Lazy-loaded plugins, LSP via Mason, Challenger Deep theme.

## Requirements

- Neovim 0.10+
- Git
- A [Nerd Font](https://www.nerdfonts.com/) - I use Cascadia Code NF in Ghostty
- Node.js (for LSP servers)
- Python (for JSON formatting)

## Install

## Plugins

| Plugin | Purpose |
|--------|---------|
| [lazy.nvim](https://github.com/folke/lazy.nvim) | Plugin manager |
| [snacks.nvim](https://github.com/folke/snacks.nvim) | File picker, explorer, lazygit, terminal, zen mode, dashboard |
| [which-key.nvim](https://github.com/folke/which-key.nvim) | Keybinding hints |
| [blink.cmp](https://github.com/Saghen/blink.cmp) | Completion |
| [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) + Mason | LSP setup |
| [conform.nvim](https://github.com/stevearc/conform.nvim) | Autoformatting |
| [nvim-lint](https://github.com/mfussenegger/nvim-lint) | Linting |
| [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) | Syntax / text objects |
| [trouble.nvim](https://github.com/folke/trouble.nvim) | Diagnostics list |
| [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim) | Status line |
| [nvim-highlight-colors](https://github.com/brenoprata10/nvim-highlight-colors) | Inline color previews |
| [emmet-vim](https://github.com/mattn/emmet-vim) | HTML/CSS expansion |
| [challenger-deep](https://github.com/challenger-deep-theme/vim) | Color scheme |

## Keybindings

`<leader>` = `\`

| Key | Action |
|-----|--------|
| `<leader>f` | Find file |
| `<leader>e` | File explorer |
| `<leader>g` | LazyGit |
| `<leader>G` | Open repo in browser |
| `<leader>t` | Terminal |
| `<leader>z` | Zen mode |
| `<leader>n` | Notification history |
| `<leader>d` | Jump to next word usage |
| `<leader>r` | Upload file (SFTP) |
| `<leader>R` | Upload folder (SFTP) |
| `<leader><space>` | Clear search highlight |
| `<leader>1` | Close all buffers → dashboard |
| `<C-h/j/k/l>` | Window navigation |
| `<C-PageUp/Down>` | Buffer navigation |
| `<` / `>` (visual) | Indent, stay in visual |
| `<leader>j` (visual) | Format JSON selection |
