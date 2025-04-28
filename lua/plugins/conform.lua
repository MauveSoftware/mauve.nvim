local conform = require('conform')
conform.setup {
  default_format_opts = {
    timeout_ms = 3000,
    async = false,
    quiet = false,
    lsp_format = "fallback",
  },
  formatters_by_ft = {
    ['_'] = { 'trim_whitespace' },
  },
}

local format_for_extensions = { "css", "html", "js", "json", "nix", "py", "ts", "yml", "yaml", "sh", "bash", "rb" }
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*." .. table.concat(format_for_extensions, ",*."),
  callback = function(args)
    conform.format({ bufnr = args.buf })
  end,
})

vim.keymap.set('n', '<leader>F', conform.format, { desc = 'Format'})
