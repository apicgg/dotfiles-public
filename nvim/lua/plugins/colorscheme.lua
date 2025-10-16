return {
  -- {
  --   "folke/tokyonight.nvim",
  --   lazy = true,
  --   opts = { style = "night" },
  -- },

  -- {
  --   "LazyVim/LazyVim",
  --   opts = {
  --     colorscheme = "onedark",
  --   },
  -- },

  {
    "AstroNvim/astrotheme",
    lazy = false,
    priority = 1000,
    config = function()
      require("astrotheme").setup({
        style = {
          transparent = true, -- Bool value, toggles transparency.
          inactive = true, -- Bool value, toggles inactive window color.
          float = true, -- Bool value, toggles floating windows background colors.
          neotree = true, -- Bool value, toggles neo-trees background color.
          border = true, -- Bool value, toggles borders.
          title_invert = true, -- Bool value, swaps text and background colors.
          italic_comments = true, -- Bool value, toggles italic comments.
          simple_syntax_colors = true, -- Bool value, simplifies the amounts of colors used for syntax highlighting.
        },

        plugins = { -- Allows for individual plugin overrides using plugin name and value from above.
          ["bufferline.nvim"] = false,
        },
      })
      vim.cmd([[colorscheme astrodark]])
    end,
  },

  -- {
  --   "craftzdog/solarized-osaka.nvim",
  --   lazy = true,
  --   priority = 1000,
  --   opts = function()
  --     return {
  --       transparent = true,
  --     }
  --   end,
  -- },
}
