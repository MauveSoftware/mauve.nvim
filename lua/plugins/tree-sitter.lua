require('nvim-treesitter.configs').setup {
  ensure_installed = {
    "bash",
    "cmake",
    "dockerfile",
    "hcl",
    "json",
    "lua",
    "markdown",
    "markdown_inline",
    "perl",
    "query",
    "ruby",
    "yaml",
  },
  auto_install = true,
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
  indent = {
    enable = true,
  },
}
