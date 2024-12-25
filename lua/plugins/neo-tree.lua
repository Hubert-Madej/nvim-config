return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  config = function()
    vim.keymap.set('n', '<C-b>', ':Neotree filesystem show left<CR>', {})
    vim.api.nvim_set_keymap('n', '<leader>w', '<C-w>w', { noremap = true, silent = true })
  end
}
