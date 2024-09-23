-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = LazyVim.safe_keymap_set

-- Set global code format showkey.
map({ "n", "i", "v" }, "<S-A-F>", function()
    LazyVim.format({ force = true })
end, { desc = "Format" })

-- Open term by ToggleTerm plugin.
-- vim.keymap.set({ "n", "i", "t" }, "<C-j>", "<Cmd>ToggleTerm<CR>")
map({ "n", "i", "t" }, "<leader>\\", "<Cmd>ToggleTerm<CR>", { desc = "ToggleTerm" })

-- map({ "n", "i", "t" }, "<leader>\\", function()
--     if vim.bo.buftype == "terminal" then
--         vim.cmd("ToggleTerm")
--     else
--         vim.cmd("write")
--         vim.cmd("ToggleTerm")
--     end
-- end, { desc = "ToggleTerm with autosave" })

map({ "n", "i", "t" }, "<leader>at", "<Cmd>Copilot toggle<CR>", { desc = "Copilot toggle" })

map({ "n", "i" }, "<C-a>", "ggVG", { desc = "Copy all content" })

map("n", "<leader>cu", "<Cmd>UndotreeToggle<CR>", { desc = "Toggle Undotree" })
