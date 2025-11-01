-- ~/.config/nvim/lua/plugins/monorepo_root.lua

return {
  -- Dies ist der Standard-Plugin-Eintrag für LSP-Root-Erkennung
  {
    "neovim/nvim-lspconfig",
    opts = {
      -- Fügt deine Monorepo-Marker zur Root-Erkennung hinzu
      root_dir = function()
        return require("lspconfig.util").find_git_ancestor(vim.loop.cwd())
          or require("lspconfig.util").root_pattern("pnpm-workspace.yaml", "lerna.json", "package.json")(vim.loop.cwd())
          or vim.loop.cwd()
      end,
    },
  },
}
