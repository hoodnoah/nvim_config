--[[ keys.lua ]]
local map = vim.api.nvim_set_keymap
local buf_map = vim.api.nvim_buf_set_keymap

-- remap the key used to leave insert mode
-- map('i', 'jk', '', {})

-- Toggle nvim-tree
map('n', '<leader>n', [[:NvimTreeToggle]], {})

map('n', '<leader>l', [[:IndentLinesToggle]], {})
map('n', '<leader>t', [[:TagbarToggle]], {})
map('n', '<leader>ff', [[:Telescope find_files]], {})
