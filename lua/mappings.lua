require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
--
map("i", "<C-l>", function()
  vim.fn.feedkeys(vim.fn["copilot#Accept"](), "")
end, { desc = "Copilot Accept", noremap = true, silent = true })

-- Manual hover
map("n", "K", vim.lsp.buf.hover, { desc = "LSP Hover" })

-- Manual signature help
map("n", "<leader>k", vim.lsp.buf.signature_help, { desc = "Signature Help" })

-- Manual diagnostics popup
map("n", "<leader>d", vim.diagnostic.open_float, { desc = "Line Diagnostics" })
