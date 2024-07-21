require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jj", "<ESC>")
map(
  "n",
  "<leader>fg",
  ":lua require('telescope').extensions.live_grep_args.live_grep_args()<CR>",
  { desc = "Grep live args" }
)

-- Debug
map("n", "<leader>du", function()
  require("dapui").toggle()
end, { desc = "Toggle Debug UI" })
map("n", "<leader>db", function()
  require("dap").toggle_breakpoint()
end, { desc = "Toggle Breakpoint" })
map("n", "<leader>ds", function()
  require("dap").continue()
end, { desc = "Start" })
map("n", "<leader>dn", function()
  require("dap").step_over()
end, { desc = "Step Over" })

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
