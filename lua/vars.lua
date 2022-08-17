--[[ vars.lua ]]

local g = vim.g         -- set g to vim.global
g.t_co = 256            -- global.terminal_colorspace
g.background = "dark"   -- vim background

-- Update the packpath
local packer_path = vim.fn.stdpath('config') .. '/site'
vim.o.packpath = vim.o.packpath .. ',' .. packer_path
