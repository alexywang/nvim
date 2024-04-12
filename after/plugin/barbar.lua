local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

map('n', '<leader>w', '<Cmd>BufferClose<CR>', opts)
map('n', '<C-[>', '<Cmd>BufferPrevious<CR>', opts)
map('n', '<C-]>', '<Cmd>BufferNext<CR>', opts)
map('n', '<Esc>', '', opts)


