return {
	"Pocco81/true-zen.nvim",
	config = function()
		require("true-zen").setup({
			modes = {
				minimalist = {
					ignored_buf_types = { "nofile" },
					options = {
						 number = false,
						 relativenumber = false,
						 showtabline = 1,
						-- signcolumn = "no",
						-- statusline = "",
						-- cmdheight = 1,
						-- laststatus = 0,
						-- showcmd = false,
						-- showmode = false,
						-- ruler = false,
						-- numberwidth = 1
					},
				},
			},
		})
	end,
}


--return {
--	"folke/zen-mode.nvim",
--	opts = {},
--	config = function()
--		require("zen-mode").setup({
--			window = {
--				width = 0.6,
--                height = 0.95,
--                padding = {
--                    top= 50,
--                }
--			},
--		})
--		vim.keymap.set("n", "<leader>mz", ":ZenMode<CR>")
--	end,
--}
