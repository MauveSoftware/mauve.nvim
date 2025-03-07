require('noice').setup({
  presets = {
    bottom_search = true,
    command_palette = true,
    long_message_to_split = true,
  },
  routes = {
    {
      filter = {
        event = "msg_show",
        kind = "",
        find = "written",
      },
      view = "mini",
    },
    {
      filter = {
        event = "msg_showmode",
        find = "record",
      },
      view = "mini",
    },
  },
})

