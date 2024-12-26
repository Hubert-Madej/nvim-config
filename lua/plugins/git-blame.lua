return {
  {
    "f-person/git-blame.nvim",
    config = function ()
      local git_blame = require("gitblame")
      git_blame.setup({
        enabled = true,
        message_template = " <summary> • <date> • <author> • <<sha>>",
        date_format = "%m-%d-%Y %H:%M:%S",
      })
    end
  }
}
