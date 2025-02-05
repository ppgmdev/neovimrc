require("config.lazy")
require("set")
require("remap")

vim.opt.shiftwidth = 4
vim.opt.clipboard = "unnamedplus"

vim.cmd [[hi @function.builtin guifg=pink]]

vim.keymap.set("n", "<space><space>x", "<cmd>source %<CR>")
vim.keymap.set("n", "<space>x", ":.lua<CR>")
vim.keymap.set("v", "<space>x", ":lua<CR>")

-- Highlight when yanking
vim.api.nvim_create_autocmd("TextYankPost", {
  desc = "Highlight when yanking text",
  group = vim.api.nvim_create_augroup("highligh-yank", { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})
