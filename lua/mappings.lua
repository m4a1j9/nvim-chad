require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jj", "<ESC>")
map("n", "<leader>y", "<cmd>Telescope neoclip<CR>", { desc = "Open Yank History" })
map(
  "n",
  "<leader>fg",
  ":lua require('telescope').extensions.live_grep_args.live_grep_args()<CR>",
  { desc = "Grep live args" }
)

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
