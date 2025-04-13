require('nvim-treesitter.configs').setup {
  auto_install = false,
  parser_install_dir = os.getenv('HOME') .. '/.nvim/tree-sitter',
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
  indent = {
    enable = true,
  },
  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = '<c-space>',
      node_incremental = '<c-space>',
      scope_incremental = false,
      node_decremental = "<bs>",
    },
  },
}
