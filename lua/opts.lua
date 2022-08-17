--[[ opts.lua ]]
local opt = vim.opt
local cmd = vim.api.nvim_command

-- [[ Context ]]
opt.colorcolumn = '80'          -- str: show column for max line length
opt.number = true               -- bool: show line numbers
opt.relativenumber = true       -- bool: show relative line numbers
opt.scrolloff = 4               -- int: min num lines of context
opt.signcolumn = "yes"          -- str: show the sign column

-- [[ FileTypes ]] 
opt.encoding = "utf8"
opt.fileencoding = "utf8"

-- [[ Theme ]]
opt.syntax = "ON"
opt.termguicolors = true
cmd('colorscheme dracula')      -- set the colorscheme

-- [[ Search ]]
opt.ignorecase = true           -- ignore case in search
opt.smartcase = true            -- if capital in search; don't ignore case
opt.incsearch = true
opt.hlsearch = false

-- [[ Whitespace ]]
opt.expandtab = true            -- use spaces instead of tabs
opt.shiftwidth = 4              -- size of indent
opt.softtabstop = 4             -- num. of spaces a tab is in insert mode
opt.tabstop = 4                 -- num. of spaces a tab is

-- [[ Splits ]]
opt.splitright = true           -- place new window to right of current
opt.splitbelow = true           -- place new window below current
