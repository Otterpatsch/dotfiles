return {
	"tzachar/highlight-undo.nvim",
	config = function()
		require("highlight-undo").setup({
			hlgroup = "HighlightUndo",
			duration = 300,
		})
	end,
}
