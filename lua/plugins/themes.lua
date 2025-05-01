-- Themes

---@type LazySpec
return {
  {
    "folke/tokyonight.nvim",
    lazy = false,
    config = function()
      require("tokyonight").setup {
        transparent = true,
        styles = {
          sidebars = "transparent",
          floats = "transparent",
        },
        dim_inactive = true,
        hide_inactive_statusline = true,
        on_colors = function(colors)
          colors.hint = colors.orange
          colors.error = "#fc4c5d"
          colors.blue = "#89acf5"
          colors.blue2 = "#0293d6"
        end,
      }
    end,
    priority = 1000,
    opts = {},
  },
}
