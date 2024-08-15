-- Leader Key
vim.g.mapleader = ' '


-- base mode
-- vim.keymap.set({mode}, {lhs}, {rhs}, {opts}


-- Shortcuts
vim.keymap.set({'n', 'x', 'o'}, '<leader>h', '^')
vim.keymap.set({'n', 'x', 'o'}, '<leader>l', 'g_')
vim.keymap.set('n', '<leader>a', ':keepjumps normal! ggVG<cr>')

-- Basic clipboard interaction
vim.keymap.set({'n', 'x'}, 'gy', '"+y') -- copy
vim.keymap.set({'n', 'x'}, 'gp', '"+p') -- paste

-- Delete text
vim.keymap.set({'n', 'x'}, 'x', '"_x')
vim.keymap.set({'n', 'x'}, 'X', '"_d')


-- Commands
vim.keymap.set('n', '<leader>w', '<cmd>write<cr>')
vim.keymap.set('n', '<leader>bq', '<cmd>bdelete<cr>')
vim.keymap.set('n', '<leader>bl', '<cmd>buffer #<cr>')

-- Tab shortcut
vim.keymap.set({'n', 'x'}, '<leader>t', '<cmd>tabnew<cr>')
vim.keymap.set({'n', 'x'}, 'tn', '<cmd>tabnext<cr>')
vim.keymap.set({'n', 'x'}, 'tb', '<cmd>tabnext -<cr>')

