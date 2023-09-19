return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
  --

  -- Theme
  {
    "folke/tokyonight.nvim",
    lazy = false,
    config = function()
      require("tokyonight").setup({
        transparent = true,
        styles = {
          sidebars = "transparent",
          floats = "transparent",
        },
        dim_inactive = true,
        hide_inactive_statusline = true,
        on_colors = function(colors)
          colors.hint  = colors.orange
          colors.error = "#fc4c5d"
          colors.blue  = "#89acf5"
          colors.blue2 = "#0293d6"
        end
      })
    end,
    priority = 1000,
    opts = {},
  },

  -- Discord Presence
  {
    "andweeb/presence.nvim",
    lazy = false,
    config = function()
      require("presence").setup {
        autoupdate = true,
        main_image = "file",
        neovim_image_text = "Neovim > EMACS!",
        editing_text = "chilling in %s",
        file_assets = {
          go = {
            "Go",
            "https://upload.wikimedia.org/wikipedia/commons/9/92/Golang_Gopher.jpg",
          },
          ["GustavoPrietoP.txt"] = { "GustavoPrietoP", "https://avatars.githubusercontent.com/u/70907734?v=4" },
        },
      }
    end,
  },

  -- Todo comments
  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {},
    event = "User AstroFile",
    cmd = { "TodoQuickFix" },
    keys = {
      { "<leader>T", "<cmd>TodoTelescope<cr>", desc = "open TODOs in Telescope" },
    },
  },

  -- Swagger Preview
  {
    "vinnymeller/swagger-preview.nvim",
    lazy = false,
    keys = {
      { "<leader>s",  "<cmd><cr>",                    desc = "Preview" },
      { "<leader>ss", "<cmd>SwaggerPreview<cr>" },
      { "<leader>st", "<cmd>SwaggerPreviewToggle<cr>" },
      { "<leader>se", "<cmd>SwaggerPreviewStop<cr>" },
    },
    config = function()
      require("swagger-preview").setup({
        -- The port to run the preview server on
        port = 8200,
        -- The host to run the preview server on
        host = "localhost",
      })
    end
  },

  -- Glow Markdown Preview
  {
    "ellisonleao/glow.nvim",
    config = function()
      require("glow").setup({
        border = "shadow", -- floating window border config
        style = "dark",    -- filled automatically with your current editor background, you can override using glow json style
        pager = false,
        width = 200,
        height = 100,
        width_ratio = 0.8, -- maximum width of the Glow window compared to the nvim window size (overrides `width`)
        height_ratio = 0.7,
      })
    end,
    cmd = "Glow",
    keys = {
      { "<leader>sm", "<cmd>Glow<cr>", desc = "Markdown glow" }
    }
  }

}
