return {
    name = "Run python with venv",
    -- params = {
    --     cmd = { optional = true, type = "string", default = "python3" },
    --     cwd = { optional = true, type = "string" },
    -- },
    builder = function()
        return {
            name = vim.fn.expand("%:t"),
            cmd = require("venv-selector").python(),
            args = { vim.fn.expand("%:p") },
            cwd = vim.fn.expand("%:p:h"),
            components = {
                "task_list_on_start",
                -- "on_complete_dispose",
                "display_duration",
                "on_exit_set_status",
                "on_complete_notify",
                "on_output_summarize",
            },
        }
    end,
    condition = {
        filetype = { "python" },
    },
}
