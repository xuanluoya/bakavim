return {
  "rcarriga/nvim-dap-ui",
  event = "VeryLazy",
  dependencies = {
    "mfussenegger/nvim-dap",
    "nvim-neotest/nvim-nio"
  },

  config = function()
    local dap = require('dap')
    local dapui = require('dapui')

    -- DAP UI 配置
    dapui.setup()

    dap.adapters.codelldb = {
      type = 'server',
      port = "${port}",
      executable = {
        command = vim.fn.stdpath('data') .. "/mason/packages/codelldb/extension/adapter/codelldb",
        args = { "--port", "${port}" },
      }
    }

    dap.configurations.c = {
      {
        name = "Launch file",
        type = "codelldb",
        request = "launch",
        program = function()
          return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
        end,
        cwd = '${workspaceFolder}',
        stopOnEntry = false,
        args = {},
      },
    }

    dap.configurations.cpp = dap.configurations.c

    vim.fn.sign_define('DapBreakpoint', { text = '🔴', texthl = 'DiagnosticError', linehl = '', numhl = '' })
    vim.fn.sign_define('DapBreakpointCondition', { text = '💠', texthl = 'DiagnosticWarn', linehl = '', numhl = '' })
    vim.fn.sign_define('DapStopped', { text = '➡️', texthl = 'Normal', linehl = 'Visual', numhl = '' })
    vim.fn.sign_define('DapLogPoint', { text = '📜', texthl = 'Comment', linehl = '', numhl = '' })
  end
}
