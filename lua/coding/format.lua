local conform = require('conform')
conform.formatters_by_ft = {
  css = { 'prettierd' },
  html = { 'prettierd' },
  javascript = { 'prettierd' },
  json = { 'prettierd' },
  markdown = { 'prettierd' },
  python = { 'black' },
  sh = { 'shfmt', 'trim_whitespace' },
  typescript = { 'prettierd' },
  yaml = { 'prettierd' },
}

conform.formatters = {
  shfmt = {
    prepend_args = {
      "--indent", "2",
      "--binary-next-line",
      "--keep-padding",
      "--space-redirects"
    },
  },
}
