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

vim.keymap.set("n", "<leader>cd", function()
  -- Get diagnostics for the current line
  local diagnostics = vim.diagnostic.get(0, { lnum = vim.fn.line(".") - 1 })
  if #diagnostics > 0 then
    -- Concatenate all diagnostic messages on the line
    local messages = {}
    for _, diagnostic in ipairs(diagnostics) do
      table.insert(messages, diagnostic.message)
    end
    local combined_message = table.concat(messages, "\n")

    -- Copy to system clipboard
    vim.fn.setreg("+", combined_message)
    print("Diagnostic message copied to clipboard!")
  else
    print("No diagnostic message on this line.")
  end
end, { noremap = true, silent = true })
