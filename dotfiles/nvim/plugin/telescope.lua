local builtin = require('telescope.builtin')
local telescope = require('telescope')


telescope.setup({
    pickers = {
        find_files = {
            hidden = true
        }
    }
})



-- todo: add key map to run: go test
vim.keymap.set('n', '<leader>sf', builtin.find_files, {})
vim.keymap.set('n', '<leader>sg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>sb', builtin.buffers, {})
vim.keymap.set('n', '<leader>sh', builtin.help_tags, {})
