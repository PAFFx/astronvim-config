-- Customize Treesitter

---@type LazySpec
return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = {
      "gdscript",
      "gdshader",
      "lua",
      "vim",
      -- add more arguments for adding more treesitter parsers
    },
  },
}
