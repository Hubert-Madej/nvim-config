return {
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.8",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			local builtin = require("telescope.builtin")
			vim.keymap.set("n", "<C-p>", builtin.find_files, {})
			vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
		end,
	},
	{
		"nvim-telescope/telescope-ui-select.nvim",
		config = function()
			require("telescope").setup({
				defaults = {
					file_ignore_patterns = {
						"node_modules/.*",
						"dist/*",
						"__pycache__/.*",
						".*/__pycache__/.*",
						".*/node_modules/.*",
						".*/dist/.*",
						"%.pyc",
						"%.pyo",
						"%.pyd",
					},
				},
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown({}),
					},
          fzf_writer = {
            minimum_grep_characters = 3,
            minimum_files_characters = 3,
          }
				},
			})
			require("telescope").load_extension("ui-select")
		end,
	},
}
