-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

-- vim.api.nvim_create_autocmd({ "FileType" }, {
--     pattern = { "c", "cpp", "python", "md", "txt" },
--     callback = function()
--         vim.b.autoformat = true
--         vim.opt_local.expandtab = true
--         vim.opt_local.tabstop = 4
--         vim.opt_local.shiftwidth = 4
--         vim.opt_local.softtabstop = 4
--     end,
-- })

vim.api.nvim_create_autocmd("FileType", {
    pattern = "*",
    callback = function()
        vim.bo.shiftwidth = 4
        vim.bo.tabstop = 4
        vim.bo.softtabstop = 4
        vim.bo.expandtab = true
        vim.opt_local.tabstop = 4
        vim.opt_local.shiftwidth = 4
        vim.opt_local.expandtab = true
    end,
})

-- Database completion
vim.api.nvim_exec(
    [[
    autocmd FileType sql setlocal omnifunc=vim_dadbod_completion#omni
    autocmd FileType sql,mysql,plsql lua require('cmp').setup.buffer({ sources = {{ name = 'vim-dadbod-completion' }} })
]],
    false
)

vim.api.nvim_create_augroup("IrreplaceableWindows", { clear = true })
vim.api.nvim_create_autocmd("BufWinEnter", {
    group = "IrreplaceableWindows",
    pattern = "*",
    callback = function()
        local filetypes = { "OverseerList", "neo-tree" }
        local buftypes = { "nofile", "terminal" }
        if vim.tbl_contains(buftypes, vim.bo.buftype) and vim.tbl_contains(filetypes, vim.bo.filetype) then
            vim.cmd("set winfixbuf")
        end
    end,
})
