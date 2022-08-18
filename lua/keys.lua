-- [[ keys.lua ]]
local map = vim.api.nvim_set_keymap

-- Toggle nvim-tree
map('n', '<leader>n', [[:NvimTreeToggle]], {})

map('n', '<leader>l', [[:IndentLinesToggle]], {})
map('n', '<leader>t', [[:TagbarToggle]], {})
map('n', '<leader>ff', [[:Telescope find_files]], {})
