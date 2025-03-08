require('nvim-treesitter.configs').setup {
  auto_install = false,
  parser_install_dir = os.getenv('HOME') .. '/.nvim/tree-sitter/parsers',
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
  indent = {
    enable = true,
  },
}
