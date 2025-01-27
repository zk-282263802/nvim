local dap = require "dap"
-- codelldb
dap.adapters.codelldb = {
  type = "exceutable",
  command = "/Users/ginkito/.local/share/nvim/mason/packages/codelldb/extension/adapter/codelldb",
}
dap.configurations.cpp = {
  {
    name = "launch c/cpp file",
    type = "codelldb",
    request = "launch",
    program = function() return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file") end,
    cwd = "${workspaceFolder}",
    stopOnEntry = false,
  },
}
