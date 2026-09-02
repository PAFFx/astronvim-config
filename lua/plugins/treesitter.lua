-- Customize Treesitter (AstroNvim v6: parsers are configured through AstroCore)

---@type LazySpec
return {
  "AstroNvim/astrocore",
  ---@type AstroCoreOpts
  opts = {
    treesitter = {
      ensure_installed = {
        "gdscript",
        "gdshader",
        -- add more arguments for adding more treesitter parsers
      },
    },
  },
}
