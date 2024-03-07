return {
  {
    "iamcco/markdown-preview.nvim",
    keys = { { "<leader>cp", "<cmd>MarkdownPreview<cr>", desc = "Markdown Preview Start" } },
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    ft = { "markdown" },
    build = function()
      vim.fn["mkdp#util#install"]()
    end,
  },
}
