---@type LazySpec
return {
  "mfussenegger/nvim-lint",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local lint = require "lint"

    lint.linters_by_ft = vim.tbl_deep_extend("force", lint.linters_by_ft or {}, {
      gdscript = { "gdlint" },
      gd = { "gdlint" },
    })

    local group = vim.api.nvim_create_augroup("user_gdscript_lint", { clear = true })
    vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave" }, {
      group = group,
      pattern = { "*.gd" },
      callback = function() require("lint").try_lint() end,
    })
  end,
}
