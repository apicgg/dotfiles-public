return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "javascript",
        "typescript",
        "tsx",
        "yaml",
        "html",
        "css",
        "scss",
        "graphql",
        "prisma",
        "bash",
        "lua",
        "vim",
        "dockerfile",
        "gitignore",
        "gitcommit",
        "git_config",
        "git_rebase",
        "gitattributes",
        "diff",
        "sql",
        "gpg",
        "markdown",
        "markdown_inline",
        "regex",
      },
    },

    config = function(_, opts)
      require("nvim-treesitter.configs").setup(opts)

      -- MDX
      vim.filetype.add({
        extension = {
          mdx = "mdx",
        },
      })
      vim.treesitter.language.register("markdown", "mdx")
    end,
  },
}
