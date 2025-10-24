-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
--
vim.api.nvim_create_user_command("LlmRestart", function()
  vim.cmd("LspRestart llm-ls")
end, {})
vim.opt.winbar = "%=%m %f"
