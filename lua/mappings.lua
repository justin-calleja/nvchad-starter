require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

-- map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")


-- Replace <leader>h / v to open a horizontal / vertical split pane
vim.keymap.del("n", "<leader>h")
vim.keymap.set("n", "<leader>h", ":split<CR>", { noremap = true, silent = true })
vim.keymap.del("n", "<leader>v")
vim.keymap.set("n", "<leader>v", ":vsplit<CR>", { noremap = true, silent = true })

vim.keymap.set("i", "<C-f>", "<Right>", { noremap = true, silent = true })
vim.keymap.set("i", "<C-b>", "<Left>", { noremap = true, silent = true })
vim.keymap.set("i", "<C-a>", "<C-o>^", { noremap = true, silent = true })

-- I did this to avoid iterm's mouse reporting to be turned on when starting neovim.
-- This allows me to use the mouse to highlight text and copy it to system clipboard.
vim.opt.mouse = ""

