-- Turn off paste mode when leaving insert
vim.api.nvim_create_autocmd("InsertLeave", {
  pattern = "*",
  command = "set nopaste",
})

-- Disable the concealing in some file formats
-- The default conceallevel is 3 in LazyVim
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "json", "jsonc", "markdown" },
  callback = function()
    vim.opt.conceallevel = 0
  end,
})

-- Fix comment string for gitconfig / gitmodules / etc.
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "gitconfig", "gitmodules" },
  callback = function()
    vim.bo.commentstring = "# %s"
  end,
})
