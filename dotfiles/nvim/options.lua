-- view :help lua-guide to actually understand this lua code
vim.g.mapleader = " "

-- TODO: figure out the difference between vim.o and vim.opt


-- show line number currently on in gutter
vim.opt.number = true

-- line numbers
vim.o.relativenumber = true

-- horizional split add window bottom
vim.opt.splitbelow = true

-- vertical split add window on right
vim.opt.splitright = true

-- make tabs into spaces
vim.opt.expandtab = true

-- make tabs 4 spaces
vim.opt.tabstop = 4

-- makes it so you don't have to scroll to very top or bottom of a file for lines to appear
vim.opt.scrolloff = 1500

-- turns of line wrapping
vim.opt.wrap = false 

vim.opt.mouse = 'a'

-- highlights the line my cursor is on
vim.opt.cursorline = true

-- sets tab size to 4
vim.opt.shiftwidth = 4

vim.o.ic = true

-- save undo unformation in a file
vim.o.undofile = true

vim.opt.updatetime = 250

-- makes OS clipboard and vim clipboard the same
vim.schedule(function()
    vim.opt.clipboard = 'unnamedplus'
end)

vim.cmd.colorscheme('catppuccin-latte')

-- [[ key maps ]] --
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- what keymap do I want? Well I want gd instead of <C-]> to be my go to definition

-- Sets how neovim will display certain whitespace characters in the editor.
vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }



-- For init.lua
vim.o.winbar = '%m %f'
