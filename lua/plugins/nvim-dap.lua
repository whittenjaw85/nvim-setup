return {
    "mfussenegger/nvim-dap",
    opts = function()
        local dap = require("dap")
        dap.adapters.gdb = {
            type = "executable",
            command = "/usr/bin/gdb",
            args = {"-i", "dap", "--eval-command", "set print pretty on" }
        }

        dap.configurations.c = {
            {
                type = "gdb",
                name = "GDB Config",
                request = "launch",
                program = function()
                    return vim.fn.input(
                        "Path to Exe",
                        vim.fn.getcwd() .. "/",
                        "file"
                    )
                end,
                cwd = "${workspaceFolder}/build",
                stopOnEntry = true,
                args = {},
                runInTerminal = false,
            },
        }
    end,
    keys = {
        {"<F4>", function() require("dap").toggle_breakpoint() end, desc="Toggle Breakpoint" },
        {"<F5>", function() require("dap").step_into() end, desc="Step Into" },
        {"<F6>", function() require("dap").step_over() end, desc="Step Over" },
        {"<F7>", function() require("dap").step_out() end, desc="Step Out" },
        {"<F8>", function() require("dap").continue() end, desc="Continue" },
    },
}
