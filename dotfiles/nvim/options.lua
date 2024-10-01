vim.g.mapleader = " "

-- TODO: figure out the difference between vim.o and vim.opt
vim.o.relativenumber = true
vim.opt.mouse = 'a'
vim.opt.cursorline = true -- highlights the line my cursor is on
vim.opt.shiftwidth = 4 -- sets tab size to 4 




-- makes OS clipboard and vim clipboard the same
vim.schedule(function()
	vim.opt.clipboard = 'unnamedplus'
end)

vim.cmd('colorscheme rose-pine')
vim.cmd [[ highlight Normal guibg=none ]] -- allegedly makes the background transparent. Seems to be working.





