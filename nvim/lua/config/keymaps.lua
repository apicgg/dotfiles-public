-- local discipline = require("anurag.discipline")

-- discipline.cowboy()

vim.g.mapleader = " "

local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- Use jj to exit insert mode
keymap.set("i", "jj", "<ESC>")

-- Clear search highlights
keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

-- Do things without affecting the registers
keymap.set("n", "x", '"_x')
keymap.set("n", "<Leader>p", '"0p', { desc = "Do things without affecting the registers" })
keymap.set("n", "<Leader>P", '"0P', { desc = "Do things without affecting the registers" })
keymap.set("v", "<Leader>p", '"0p', { desc = "Do things without affecting the registers" })
keymap.set("n", "<Leader>c", '"_c', { desc = "Do things without affecting the registers" })
keymap.set("n", "<Leader>C", '"_C', { desc = "Do things without affecting the registers" })
keymap.set("v", "<Leader>c", '"_c', { desc = "Do things without affecting the registers" })
keymap.set("v", "<Leader>C", '"_C', { desc = "Do things without affecting the registers" })
keymap.set("n", "<Leader>d", '"_d', { desc = "Do things without affecting the registers" })
keymap.set("n", "<Leader>D", '"_D', { desc = "Do things without affecting the registers" })
keymap.set("v", "<Leader>d", '"_d', { desc = "Do things without affecting the registers" })
keymap.set("v", "<Leader>D", '"_D', { desc = "Do things without affecting the registers" })

-- Increment/Decrement numbers
-- keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" }) -- increment
-- keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" }) -- decrement

-- Disable LazyVim default for oil nvim
vim.keymap.del("n", "<leader>-")

-- Delete a word backwards
keymap.set("n", "dw", 'vb"_d')

keymap.set("n", "<leader>w", ":wa<CR>", { desc = "Save file" })

-- Select all
-- keymap.set("n", "<C-a>", "gg<S-v>G")

-- Save with root permission (not working for now)
--vim.api.nvim_create_user_command('W', 'w !sudo tee > /dev/null %', {})

-- Disable continuations
keymap.set("n", "<Leader>o", "o<Esc>^Da", opts)
keymap.set("n", "<Leader>O", "O<Esc>^Da", opts)

-- Jumplist
-- keymap.set("n", "<C-m>", "<C-i>", opts)

-- Tab management (not using right now)
-- keymap.set("n", "te", ":tabedit")
-- keymap.set("n", "<tab>", ":tabnext<Return>", opts)
-- keymap.set("n", "<s-tab>", ":tabprev<Return>", opts)
-- keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
-- keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
-- keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
-- keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab
-- keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab

-- Window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window

-- Resize window
keymap.set("n", "<C-w><left>", "<C-w><")
keymap.set("n", "<C-w><right>", "<C-w>>")
keymap.set("n", "<C-w><up>", "<C-w>+")
keymap.set("n", "<C-w><down>", "<C-w>-")

-- Session management
-- keymap.set("n", "<leader>wr", "<cmd>SessionRestore<CR>", { desc = "Restore session for cwd" })
-- keymap.set("n", "<leader>ws", "<cmd>SessionSave<CR>", { desc = "Save workspace session for current working directory" })

-- vim-fugitive
keymap.set("n", "<leader>vf", "<cmd>G<cr>", { desc = "Open vim-fugitive" })
keymap.set("n", "<leader>vd", "<cmd>Gvdiffsplit<cr>", { desc = "Git vertical diff with vim-fugitive" })

-- Diagnostics
-- keymap.set("n", "<C-j>", function()
--   vim.diagnostic.goto_next()
-- end, opts)

keymap.set("n", "<leader>r", function()
  require("anurag.hsl").replaceHexWithHSL()
end, { desc = "Replace Hex with HSL" })

-- keymap.set("n", "<leader>i", function()
--   require("anurag.lsp").toggleInlayHints()
-- end, { desc = "Toggle Inlay Hints" })
