return {
  "harrisoncramer/gitlab.nvim",
  dependencies = {
    "MunifTanjim/nui.nvim",
    "nvim-lua/plenary.nvim",
    "stevearc/dressing.nvim", -- Recommended but not required. Better UI for pickers.
    enabled = true,
  },
  build = function () require("gitlab.server").build() end, -- Builds the Go binary
  config = function()
    require("gitlab").setup()
  end,
}