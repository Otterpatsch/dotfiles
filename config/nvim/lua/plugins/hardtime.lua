return {
  "m4xshen/hardtime.nvim",
  dependencies = { "MunifTanjim/nui.nvim", "nvim-lua/plenary.nvim" },
  opts = {
    restriction_mode = "hint",
    disable_mouse = false,
    restricted_keys = {
      ["j"] = {},
      ["k"] = {},
      ["h"] = {},
      ["l"] = {},
    },
  },
}
