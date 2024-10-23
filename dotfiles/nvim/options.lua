

local thing = [[
    vim.cmd() - these are vim commands 

]]

-- view :help lua-guide to actually understand this lua code
vim.g.mapleader = " "

-- TODO: figure out the difference between vim.o and vim.opt
vim.o.relativenumber = true
vim.opt.mouse = 'a'
vim.opt.cursorline = true -- highlights the line my cursor is on
vim.opt.shiftwidth = 4 -- sets tab size to 4 
vim.o.ic = true
vim.o.undofile = true -- save undo unformation in a file

vim.opt.updatetime = 250


-- makes OS clipboard and vim clipboard the same
vim.schedule(function()
    vim.opt.clipboard = 'unnamedplus'
end)

vim.cmd.colorscheme('gruvbox') -- ('colorscheme rose-pine')
-- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
-- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
-- vim.cmd [[ highlight Normal guibg=none ]] -- allegedly makes the background transparent. Seems to be working.



-- [[ key maps ]] --


vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')




