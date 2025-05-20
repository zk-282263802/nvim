-- ~/.config/nvim/lua/plugins/copilot.lua
return {
  "github/copilot.vim",
  lazy = false,
  event = "InsertEnter",
  config = function()
    -- 禁用默认的 <Tab> 映射
    vim.g.copilot_no_tab_map = true
    -- 自定义快捷键，比如 Ctrl+J 接受建议
    vim.api.nvim_set_keymap("i", "<C-J>", 'copilot#Accept("<CR>")', { silent = true, expr = true })

    -- 也可以启用所有文件类型
    vim.g.copilot_filetypes = {
      ["*"] = true,
    }
  end,
}
