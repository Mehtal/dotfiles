vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- Diagnostic keymaps
vim.keymap.set("n", "<leader>dp", vim.diagnostic.goto_prev, { desc = "Go to previous [D]iagnostic message" })
vim.keymap.set("n", "<leader>dn", vim.diagnostic.goto_next, { desc = "Go to next [D]iagnostic message" })
vim.keymap.set("n", "<leader>de", vim.diagnostic.open_float, { desc = "Show diagnostic [E]rror messages" })
vim.keymap.set("n", "<leader>dq", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })
vim.keymap.set("n", "<leader>dh", vim.diagnostic.hide, { desc = "Hide diagnositc" })
vim.keymap.set("n", "<leader>ds", vim.diagnostic.show, { desc = "Show diagnostic" })
-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--  See `:help wincmd` for a list of all window commands
vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

vim.keymap.set("n", "<space>v", "<cmd> vs | bnext  <CR>", { desc = "vsplit to next buffer" })
vim.keymap.set("n", "<space>h", "<cmd> split | bnext  <CR>", { desc = "split to next buffer" })
vim.keymap.set("n", "”", "<cmd> bnext  <CR>", { desc = "next buffer" })
vim.keymap.set("n", "þ", "<cmd> bprev  <CR>", { desc = "previous buffer" })

vim.keymap.set("t", "<C-x>", "<C-\\><C-n>", { desc = "go to normal mode from terminal mode" })
vim.keymap.set("n", "<C-x>", "vim.cmd.startinsert <CR>", { desc = "go to insert mode in terminal", buffer = 0 })
vim.keymap.set("n", "<space>x", "<cmd> bd <CR>", { desc = "close current buffer" })

-- mapping insert mode movments
vim.keymap.set("i", "<C-b>", "<ESC>^i", { desc = "Move to the begining of the line" })
vim.keymap.set("i", "<C-e>", "<End>", { desc = "Move to the end of the line" })
vim.keymap.set("i", "<C-h>", "<Left>", { desc = "Move Left" })
vim.keymap.set("i", "<C-j>", "<Down>", { desc = "Move Down" })
vim.keymap.set("i", "<C-k>", "<Up>", { desc = "Move Up" })
vim.keymap.set("i", "<C-l>", "<Right>", { desc = "Move Right" })
