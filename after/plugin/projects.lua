local telescope = require'telescope'

vim.keymap.set('n', '<C-p>', telescope.extensions.projects.projects, {})

