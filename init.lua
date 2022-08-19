-- [[ init.lua ]]

-- LEADER
-- These keybindings need to be defined before the first /
-- is called; otherwise, it will default to "\"
vim.g.mapleader = ","
vim.g.localleader = "\\"

-- IMPORTS
require('keys')     -- Keymaps
require('vars')     -- Variables
require('plug')     -- Plugins
require('opts')     -- Options

-- PLUGINS
require('nvim-tree').setup{}
require('lualine').setup {
    options = {
        theme = 'dracula-nvim'
    }
}
require('nvim-autopairs').setup{}
