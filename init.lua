--[[ init.lua ]] 
-- LEADER
-- These keybindings need to be defined before the first /
-- is called; otherwise, it will default to "\"
vim.g.mapleader = ","
vim.g.localleader = "\\"

-- IMPORTS
require('vars')      -- Variables
require('opts')      -- Options
require('keys')      -- Keymaps
require('plug')      -- Plugins

-- SETUP
require('nvim-tree').setup{}
require('lualine').setup {
  options = {
    theme = 'dracula-nvim'
  }
}
require('nvim-autopairs').setup{}
require('nvim-treesitter.configs').setup{
    ensure_installed = { "lua" },
    sync_install = false,
    auto_install = true,
    highlight = {
        enable = true
    }
}
