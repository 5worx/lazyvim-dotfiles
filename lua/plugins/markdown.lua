-- ~/.config/nvim/lua/plugins/markdown.lua

return {
  -- Markdown Preview mit Live-Update
  {
    "iamcco/markdown-preview.nvim",
    ft = "markdown",
    build = "cd app && npm install",
    config = function()
      vim.g.mkdp_filetypes = { "markdown" }
      vim.g.mkdp_port = "8888" -- Kannst du bei Bedarf ändern
      vim.g.mkdp_browser = "firefox" -- Oder "chromium", "google-chrome", etc.
    end,
  },
}
