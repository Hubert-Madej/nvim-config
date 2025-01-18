vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set relativenumber")
vim.cmd("set t_Co=16")
vim.g.mapleader = " "
vim.api.nvim_create_autocmd("TextYankPost", {
	group = vim.api.nvim_create_augroup("vim_highlight_yank", { clear = true }),
	callback = function()
		(vim.hl or vim.highlight).on_yank()
	end,
})
