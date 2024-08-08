local gitsigns = require('gitsigns')

gitsigns.setup({
    current_line_blame = false,
    current_line_blame_opts = {
        delay = 0,
    },
})


vim.keymap.set('n', '<leader>gd', gitsigns.diffthis, {})
vim.keymap.set('n', '<leader>gtd', gitsigns.toggle_deleted, {})
vim.keymap.set('n', '<leader>gtl', gitsigns.toggle_current_line_blame, {})

