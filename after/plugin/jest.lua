local jester = require("jester")


vim.keymap.set('n', '<leader>jt', jester.run, {})
vim.keymap.set('n', '<leader>jf', jester.run_file, {})
