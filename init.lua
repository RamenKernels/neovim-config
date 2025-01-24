local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({
      "git",
      "clone",
      "--depth",
      "1",
      "https://github.com/wbthomason/packer.nvim",
      install_path,
    })
    vim.cmd([[packadd packer.nvim]])
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

require('packer').startup()

vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost init.lua source <afile> | PackerSync
  augroup end
]])

require('plugins')

local function open_tree_and_terminal()
  arg = vim.fn.argv(0)

  if arg == nil or arg == '' or vim.fn.isdirectory(arg) == 1 then
    vim.api.nvim_command("ToggleTerm")
    vim.api.nvim_command("NvimTreeToggle")
    vim.api.nvim_command("stopinsert")
  end
end

vim.api.nvim_create_autocmd("vimEnter", {
  callback = open_tree_and_terminal
})


require('keymaps')
require('settings')

