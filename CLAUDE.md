# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Repository Overview

This is a Neovim configuration based on kickstart.nvim - a minimal, well-documented Neovim setup that serves as a starting point for personal configurations. The config is primarily contained in a single `init.lua` file with additional custom plugins in the `lua/custom/plugins/` directory.

## Architecture

### Core Structure
- **`init.lua`**: Main configuration file containing all core settings, keymaps, and plugin definitions
- **`lua/custom/plugins/`**: Directory for custom plugin configurations that extend the base setup
- **`utils/linter-config/`**: Contains linter configuration files (referenced by prettier config in init.lua)
- **`ftplugin/`**: Filetype-specific configurations
- **`lazy-lock.json`**: Plugin version lockfile managed by lazy.nvim

### Plugin Management
Uses **lazy.nvim** as the plugin manager. Plugins are configured inline within the main `require('lazy').setup()` call in `init.lua`, with custom plugins imported via `{ import = 'custom.plugins' }`.

### Key Components
- **LSP Setup**: Comprehensive language server configuration with Mason for automatic installation
- **Telescope**: Fuzzy finder with multiple extensions (fzf, live-grep-args, file-browser)
- **Treesitter**: Syntax highlighting and parsing
- **Completion**: nvim-cmp with LSP and snippet support
- **Theme**: Catppuccin (macchiato flavor) with lualine statusline
- **Git Integration**: Enhanced git workflow with conflict resolution

## Supported Languages & Tools

### Language Servers Configured
- **Lua**: lua_ls with kickstart-specific settings
- **Go**: gopls with templ file support
- **Rust**: rust_analyzer
- **TypeScript/JavaScript**: tsserver (with Deno detection logic)
- **HTML**: html with templ support
- **CSS**: cssls, tailwindcss
- **Java/Kotlin**: jdtls, kotlin_language_server
- **Deno**: denols (auto-detected based on deno.json presence)
- **EFM**: General formatter/linter server

### Formatters
- **Lua**: stylua
- **JavaScript/TypeScript**: prettierd/prettier
- **Go Templates**: templ

## Custom Features

### Keymaps (Beyond Standard Kickstart)
- `<C-p>`: LSP signature help (normal and insert mode)
- `<C-d>/<C-u>`: Scroll with cursor centering
- `n/N`: Search with centering and fold opening
- Disabled arrow keys with helpful messages

### Custom Plugins
- **git-conflict.nvim**: Git merge conflict resolution
- **nvim-ts-autotag**: Auto-close HTML/JSX tags  
- **vim-tmux-navigator**: Seamless tmux pane navigation
- **render-markdown.nvim**: Enhanced markdown rendering

### Special Configurations
- **Templ Support**: Go template files (*.templ) with proper LSP and syntax highlighting
- **TypeScript/Deno Detection**: Automatic switching between tsserver and denols based on project type
- **Prettier Config**: Uses custom prettier config from `utils/linter-config/.prettierrc.yaml`

## Development Workflow

### Plugin Management
- `:Lazy`: View plugin status and manage plugins
- `:Lazy update`: Update all plugins
- `:Mason`: Manage LSP servers and tools

### LSP & Diagnostics
- `gd`: Go to definition
- `gr`: Go to references  
- `<leader>ca`: Code actions
- `<leader>rn`: Rename symbol
- `[d`/`]d`: Navigate diagnostics

### File Navigation
- `<leader>sf`: Find files
- `<leader>sg`: Live grep
- `<leader>fg`: Live grep with args
- `<space>fb`: File browser
- `<leader><leader>`: Buffer switcher

### Formatting
- `<leader>ft`: Format current buffer
- Format on save enabled (with some exceptions: C, C++, Kotlin)

## Important Notes

### Dependencies
- Requires Neovim stable or nightly
- External tools: git, make, unzip, C compiler, ripgrep
- Language-specific requirements (npm for TypeScript, go for Go development, etc.)
- Nerd Font recommended for icons (`vim.g.have_nerd_font = true`)

### File Type Support
- Auto-detection for *.templ files with treesitter highlighting
- Custom LSP configurations for multiple languages
- Markdown rendering for better documentation viewing


This configuration provides a solid foundation for multi-language development with modern Neovim features while maintaining the educational clarity of kickstart.nvim.