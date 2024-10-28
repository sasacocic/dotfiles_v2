local builtin = require('telescope.builtin')
local telescope = require('telescope')


telescope.setup({
    pickers = {
        find_files = {
            hidden = true
        }
    }
})



vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

vim.keymap.set('n', '<leader>fm', function() print('something') end, {})
vim.keymap.set('n', '<leader>fz', function() print('something') end, {})
