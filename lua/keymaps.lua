--common

vim.api.nvim_set_keymap('', '<up>',    ':echoe "use hjkl, please"<CR>', {noremap = true, silent = false})
vim.api.nvim_set_keymap('', '<down>',  ':echoe "use hjkl, please"<CR>', {noremap = true, silent = false})
vim.api.nvim_set_keymap('', '<left>',  ':echoe "use hjkl, please"<CR>', {noremap = true, silent = false})
vim.api.nvim_set_keymap('', '<right>', ':echoe "use hjkl, please"<CR>', {noremap = true, silent = false})

vim.api.nvim_set_keymap('i', 'jk', '<Esc>', {noremap = true})
vim.api.nvim_set_keymap('n', ',<space>', ':nohlsearch<CR>', {noremap = true})

-- plugins
