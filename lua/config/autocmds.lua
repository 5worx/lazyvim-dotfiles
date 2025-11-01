-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

-- Autocommand für automatisches Speichern bei Fokusverlust
vim.api.nvim_create_autocmd("FocusLost", {
  group = vim.api.nvim_create_augroup("LazyVim_FocusLost_Save", { clear = true }),
  callback = function()
    vim.cmd("wa!")
  end,
  desc = "Save file on FocusLost",
})

-- Verschiebt den NvimTree nach rechts beim Start
vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    -- Nur ausführen, wenn der NvimTree offen ist
    if vim.fn.bufname("%") == "NvimTree" then
      -- Erzwinge, dass das aktuelle Fenster (NvimTree) nach rechts verschoben wird
      vim.cmd("wincmd L")
    end
  end,
})
