-- [[ keys.lua ]]
local map = vim.api.nvim_set_keymap

-- [[ tab controls ]]
-- new tab
map('n', '<leader>tn', [[:tabnew<cr>]], {})

-- open file in tab
map('n', '<leader>tf', [[:tabnew ]], {})

-- close tab
map('n', '<leader>tc', [[:tabclose<cr>]], {})

-- next tab
map('n', '<leader>t', [[:tabnext<cr>]], {})

-- move tab
map('n', '<leader>tm', [[:tabmove<cr>]], {})

-- tab only i.e. close all but open tab
map('n', '<leader>to', [[:tabonly<cr>]], {})

-- Toggle nvim-tree
map('n', '<leader>n', [[:NvimTreeToggle<cr>]], {})

-- Indent lines
map('n', '<leader>l', [[:IndentLinesToggle<cr>]], {})

-- Toggle tagbar
-- map('n', '<leader>t', [[:TagbarToggle]], {})

-- Finder
map('n', '<leader>ff', [[:Telescope find_files<cr>]], {})

