vim.keymap.set("n", "<leader>co", ":diffget LOCAL<CR>", { desc = "Get OUR changes" })
vim.keymap.set("n", "<leader>ct", ":diffget REMOTE<CR>", { desc = "Get THEIR changes" })
vim.keymap.set("n", "<leader>cb", ":diffget BASE<CR>", { desc = "Get BASE changes" })

-- editorfile
require('editorconfig').properties.file_type = function(bufnr, val, _)
  vim.bo[bufnr].ft = val
end
