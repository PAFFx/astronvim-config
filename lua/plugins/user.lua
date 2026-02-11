-- You can also add or configure plugins by creating files in this `plugins/` folder
-- PLEASE REMOVE THE EXAMPLES YOU HAVE NO INTEREST IN BEFORE ENABLING THIS FILE
-- Here are some examples:

---@type LazySpec
return {

  -- customize dashboard options
  {
    "folke/snacks.nvim",
    opts = {
      dashboard = {
        preset = {
          header = table.concat({
            --  =========== Zero2-ascii-art =============
            " ⣧⡀⠈⠳⣷⡀⢠⠃⠀⠀⠀⠀⠀⠀⠀⣀⣀⣀⣀⣀⣀⣀⣀⡀⠀⠀⡴⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⡆⠀⠀⠀⠇⠀",
            " ⣿⣿⣤⣤⣮⣷⡃⠀⠀⣀⠤⠖⠚⠉⠁⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⠑⡇⠈⠳⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢳⡀⠀⠀⢰⠀",
            " ⣿⣿⣿⣿⠎⠀⠉⢲⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢹⡆⠀⡞⠢⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⣿⣄⠀⢸⠠",
            " ⣿⣿⣿⣿⣷⠄⠀⡜⠀⣀⡠⠤⠒⠂⠉⠉⠉⠁⠀⠀⠉⠉⠉⠉⠓⠒⠢⡷⣠⠃⠐⠛⠉⠢⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢻⣿⣿⣼⡆",
            " ⣿⣿⣿⣿⣟⣓⠶⠇⡜⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢱⠉⢀⡟⠢⠤⣀⠈⠢⡀⠀⠀⠀⠀⠀⠀⠀⠀⢸⡿⠋⠀⣷",
            "⠈⢿⣿⣿⣿⠛⡄⢰⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢇⡜⠀⠀⠀⠀⠉⠒⠻⣄⠀⠀⠀⠀⠀⠀⠀⠈⡇⠀⠀⣿",
            "⠀⠀⢻⣿⣿⠀⢹⠏⠀⠀⠀⠀⠀⠄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠁⠀⢠⠀⠀⠀⠀⠀⠂⢠⠀⠀⠀⠀⠀⠀⠀⢹⠀⠀⢻",
            "⠛⠓⠚⠛⢻⠀⡆⠀⠀⠀⠀⠀⢰⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠂⠀⠀⠀⠀⠈⡆⠇⠀⠀⠀⠃⠀⠀⠀⠀⠀⡄⠀⠀⠸⡀⠀⢸",
            "⠀⠀⠀⠀⣸⠀⠀⠀⢀⡇⠀⡀⠘⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠁⠀⠀⠀⠀⠀⢸⡆⠀⠀⠀⠅⠀⠀⠀⠀⠀⢱⠀⠀⠀⡟⠙⠛",
            "⠉⠉⠉⠉⢻⠀⠀⠀⡼⠇⡆⠁⠀⠀⡀⠀⠀⠀⠀⠀⡆⡁⠀⠀⠀⠀⠂⣧⠀⠈⡄⠀⠀⡇⠀⠀⠀⠀⢰⣦⠀⠀⠀⠘⡆⠀⠀⢸⡀⢀",
            "⠀⠀⠀⠀⢸⠀⡇⢰⡃⢰⡇⡆⢀⠀⡄⠀⠀⠀⠀⠀⢸⣧⠀⢸⠀⡄⢸⡏⢣⠀⢻⡀⠀⠀⠀⠀⠀⠀⢸⣿⣆⣀⣀⠀⣷⠀⠀⠘⡍⠉",
            "⠀⠀⠀⠀⢸⡄⡇⡻⠉⢹⡿⢳⢺⢤⣤⠀⠀⢨⠀⠀⣼⣿⠴⠚⡗⠛⢹⡏⠉⢳⡘⡟⣄⢀⠀⠀⠀⠀⢸⠟⢁⣴⡚⢳⠸⣇⠀⠀⢡⠀",
            "⠀⠀⠀⠀⢸⡇⣇⣇⠀⠘⣿⠈⣮⡀⢸⡄⠇⠀⡇⠀⢩⢹⡄⠀⢱⠀⠻⡇⠀⠀⠱⣽⡈⢻⠀⠀⠀⠀⢸⣠⠾⠀⢱⠀⡇⢻⡄⠀⠈⣇",
            "⠀⠀⠀⠀⠈⡇⢻⣿⣦⣤⣿⣦⣜⣇⢸⢧⠸⡀⠸⡄⠈⠀⢳⠀⢸⡆⠀⣻⣀⡀⠀⢈⠻⣼⠀⠀⠀⡆⢸⣏⠀⠀⢸⠀⣧⠘⣿⡄⠀⠸",
            "⣶⣤⣀⠀⠀⢧⢸⣿⣿⡟⢯⡉⠻⣿⣿⡛⢆⢻⡆⠙⣼⠐⠶⣿⣿⣿⣿⣿⡶⠚⠛⣻⣿⢿⠀⠀⠀⡇⢸⣸⡆⣀⠞⣰⣓⣲⣿⣛⠒⠒",
            "⣋⡿⢛⣿⣶⣾⠀⢿⣿⣷⡀⠈⠒⠻⠼⠇⠈⠛⠛⠒⠚⠂⠀⠈⠁⠿⢧⣭⡿⠤⠒⠛⠁⠘⡄⠀⠀⠃⢸⠛⠉⢁⠜⢱⡿⠋⣉⣹⠃⠐",
            "⠀⠙⠚⠨⣸⣻⡄⢸⡏⢻⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡇⠀⠀⠀⢸⣤⡴⠃⠀⠈⠙⠂⠉⠀⠀⠀",
            "⠀⠀⠀⠀⠀⠙⡇⠸⠃⢸⢻⡄⠀⠀⠀⣠⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢰⠃⠐⠀⠀⢸⠁⠘⢄⠀⠀⠀⠀⠀⠀⠀⠀",
            "⠁⠀⠀⠀⢀⣠⡇⠀⠀⢸⠈⣷⡄⠀⠀⠀⠠⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⠀⡀⠀⠀⢸⠀⠀⠀⢹⠲⣤⣤⣤⣤⡞⢷",
            "⠙⠲⢶⣿⣿⣿⣷⠀⠀⠈⠀⣿⣿⢦⡀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡤⢠⡀⠀⠀⠀⠀⠀⢀⣾⠀⡀⢰⠀⡄⠀⠀⢀⠏⠀⣿⣿⣿⠿⡤⣼",
            "⠢⢄⡀⠉⠓⠮⣹⠀⡇⠀⠀⣿⣿⠀⠉⡶⢄⠀⠈⠒⠒⠒⠒⠋⠉⠁⠀⠀⠀⠀⢀⣴⣿⢿⠀⠇⠀⠀⡇⠀⣠⠋⠀⠀⣿⡇⣿⣁⣇⢸",
            "⠀⠀⠉⠢⣄⠀⢸⠀⡇⠀⠀⠀⠸⡆⠀⢸⢰⣿⠶⣄⡀⠀⠀⠀⠀⠀⠀⢀⣤⠾⠿⣿⠇⢸⢸⠀⠠⠀⣇⠔⠁⠀⠀⢠⣿⣧⣇⣿⣿⢸",
            "⠀⠀⠀⢀⣈⡱⠾⡇⡇⠀⠀⡄⠀⢣⠀⣸⣼⣿⠀⠀⣙⣦⣄⡀⣀⠤⠾⡉⠀⠀⠀⡼⠳⡆⠘⠀⣤⢠⡏⠀⠀⢀⡴⠋⣿⣻⣿⣿⣿⢸",
            "⠀⠀⠀⠀⠀⠀⠀⡇⠃⠀⠀⡇⠀⠈⣆⣿⣿⡏⢀⣾⣿⣿⣿⡏⠀⠀⠀⠈⠢⢤⣀⣧⣀⡇⡆⠀⣼⢸⡀⣀⠴⠋⠀⠀⣿⣿⣿⣿⣿⠸",
            "",
            "",
            "",
            -- ========== PAFF NVIM ============
            "██████╗░░█████╗░███████╗███████╗  ███╗░░██╗███████╗░█████╗░██╗░░░██╗██╗███╗░░░███╗",
            "██╔══██╗██╔══██╗██╔════╝██╔════╝  ████╗░██║██╔════╝██╔══██╗██║░░░██║██║████╗░████║",
            "██████╔╝███████║█████╗░░█████╗░░  ██╔██╗██║█████╗░░██║░░██║╚██╗░██╔╝██║██╔████╔██║",
            "██╔═══╝░██╔══██║██╔══╝░░██╔══╝░░  ██║╚████║██╔══╝░░██║░░██║░╚████╔╝░██║██║╚██╔╝██║",
            "██║░░░░░██║░░██║██║░░░░░██║░░░░░  ██║░╚███║███████╗╚█████╔╝░░╚██╔╝░░██║██║░╚═╝░██║",
            "╚═╝░░░░░╚═╝░░╚═╝╚═╝░░░░░╚═╝░░░░░  ╚═╝░░╚══╝╚══════╝░╚════╝░░░░╚═╝░░░╚═╝╚═╝░░░░░╚═╝",
          }, "\n"),
          keys = {},
        },
      },
    },
  },

  -- You can disable default plugins as follows:
  { "max397574/better-escape.nvim", enabled = false },

  -- You can also easily customize additional setup of plugins that is outside of the plugin's setup call
  {
    "L3MON4D3/LuaSnip",
    config = function(plugin, opts)
      require "astronvim.plugins.configs.luasnip"(plugin, opts) -- include the default astronvim config that calls the setup call
      -- add more custom luasnip configuration such as filetype extend or custom snippets
      local luasnip = require "luasnip"
      luasnip.filetype_extend("javascript", { "javascriptreact" })
    end,
  },

  {
    "windwp/nvim-autopairs",
    config = function(plugin, opts)
      require "astronvim.plugins.configs.nvim-autopairs"(plugin, opts) -- include the default astronvim config that calls the setup call
      -- add more custom autopairs configuration such as custom rules
      local npairs = require "nvim-autopairs"
      local Rule = require "nvim-autopairs.rule"
      local cond = require "nvim-autopairs.conds"
      npairs.add_rules(
        {
          Rule("$", "$", { "tex", "latex" })
            -- don't add a pair if the next character is %
            :with_pair(cond.not_after_regex "%%")
            -- don't add a pair if  the previous character is xxx
            :with_pair(
              cond.not_before_regex("xxx", 3)
            )
            -- don't move right when repeat character
            :with_move(cond.none())
            -- don't delete if the next character is xx
            :with_del(cond.not_after_regex "xx")
            -- disable adding a newline when you press <cr>
            :with_cr(cond.none()),
        },
        -- disable for .vim files, but it work for another filetypes
        Rule("a", "a", "-vim")
      )
    end,
  },

  {
    "sphamba/smear-cursor.nvim",
    opts = {
      stiffness = 0.8, -- 0.6      [0, 1]
      trailing_stiffness = 0.6, -- 0.45     [0, 1]
      stiffness_insert_mode = 0.7, -- 0.5      [0, 1]
      trailing_stiffness_insert_mode = 0.7, -- 0.5      [0, 1]
      damping = 0.95, -- 0.85     [0, 1]
      damping_insert_mode = 0.95, -- 0.9      [0, 1]
      distance_stop_animating = 0.5, -- 0.1      > 0
      time_interval = 7, -- milliseconds
      smear_between_neighbor_lines = false,
      smear_insert_mode = false,
      cursor_color = "#fb4c5d",
      legacy_computing_symbols_support = true,
    },
  },
}
