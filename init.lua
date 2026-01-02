-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

local dap = require("dap")

vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.softtabstop = 4

--require("lspconfig").clangd.setup({
--  cmd = { "clangd", "--diagnostic-suppress=unused-include" },
--})

require('to-do comments').setup {
    keywords = {
        DONE = {
            icon="✓",
            color = "green",
            alt = {"FIXED", "COMPLETED"}
        },
    },
}

-- dap.adapters.gdb = {
--     id = "gdb",
--     type = "executable",
--     --command = "/usr/bin/gdb"
--     command = "gdb",
--     args = {"--interpreter=dap", "--eval-command", "set print pretty on"}
-- }
--
-- local gdb = {
--     name = "Launch GDB",
--     type = "gdb",
--     request = "launch",
--     program = function()
--         return vim.fn.input(
--             "Path to Exe",
--             vim.fn.getcwd() .. "/",
--             "file"
--         )
--     end,
--     cwd = "$(workspaceFolder)",
--     stopOnEntry = true,
--     args = {},
--     runInTerminal = false,
-- }
--
-- require('dap').configurations.c = {
--     gdb  --debuggers
-- }

