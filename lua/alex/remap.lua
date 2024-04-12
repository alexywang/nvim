vim.g.mapleader = " "
vim.keymap.set("n", "<leader>vv", vim.cmd.Ex)

-- move shit up and down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- yank to real buffer
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")


-- split panes
vim.keymap.set("n", "<leader>sv", vim.cmd.split)
vim.keymap.set("n", "<leader>ss", vim.cmd.vsplit)
vim.keymap.set("n", "<C-e>", ":wincmd w<CR>", { noremap = true} )



-- bottom pane terminal

vim.keymap.set("n", "<C-t>" , ':call TermToggle(12)<CR>', { noremap = true, silent = true })
vim.keymap.set("t", "<C-t>" , "<C-\\><C-n>:call TermToggle(13)<CR>", { noremap = true, silent = true })
vim.keymap.set("i", "<C-t>" , "<Esc>:call TermToggle(12)<CR>", { noremap = true, silent = true })

