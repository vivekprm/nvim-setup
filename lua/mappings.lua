require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

-- Nvim DAP
map("n", "<Leader>dl", "<cmd>lua require'dap'.step_into()<CR>", { desc = "Debugger step into" })
map("n", "<Leader>dj", "<cmd>lua require'dap'.step_over()<CR>", { desc = "Debugger step over" })
map("n", "<Leader>dk", "<cmd>lua require'dap'.step_out()<CR>", { desc = "Debugger step out" })
map("n", "<Leader>dc", "<cmd>lua require'dap'.continue()<CR>", { desc = "Debugger continue" })
map("n", "<Leader>db", "<cmd>lua require'dap'.toggle_breakpoint()<CR>", { desc = "Debugger toggle breakpoint" })
map(
	"n",
	"<Leader>dd",
	"<cmd>lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>",
	{ desc = "Debugger set conditional breakpoint" }
)
map("n", "<Leader>de", "<cmd>lua require'dap'.terminate()<CR>", { desc = "Debugger reset" })
map("n", "<Leader>dr", "<cmd>lua require'dap'.run_last()<CR>", { desc = "Debugger run last" })

-- rustaceanvim
map("n", "<Leader>dt", "<cmd>lua vim.cmd('RustLsp testables')<CR>", { desc = "Debugger testables" })

-- go ---
map("n", "<leader>dgt", "<cmd>lua require'dap-go'.debug_test()<CR>", { desc = "Debug go test" })
map("n", "<leader>dgl", "<cmd>lua require'dap-go'.debug_last()<CR>", { desc = "Debug last go test" })
map("n", "<leader>gsj", "<cmd>GoTagAdd json<CR>", { desc = "Add json struct tags" })
map("n", "<leader>gsy", "<cmd>GoTagAdd yaml<CR>", { desc = "Add yaml struct tags" })

-- telescope --
map("n", "<leader>ff", "<cmd>lua require('telescope.builtin').find_files()<cr>", { desc = "Telescope find files" })
map("n", "<leader>fg", "<cmd>lua require('telescope.builtin').live_grep()<cr>", { desc = "Telescope live grep" })
map("n", "<leader>fb", "<cmd>lua require('telescope.builtin').buffers()<cr>", { desc = "Telescope buffers" })
map("n", "<leader>fh", "<cmd>lua require('telescope.builtin').help_tags()<cr>", { desc = "Telescope help tags" })
map("n", "<leader>fm", "<cmd>lua require('telescope.builtin').lsp_document_symbols({ symbols='function' })<cr>", { desc = "Telescope list functions" })
map("n", "<leader>fr", "<cmd>lua require('telescope.builtin').lsp_references()<cr>", { desc = "Telescope go to references" })
map("n", "<leader>fi", "<cmd>lua require('telescope.builtin').lsp_implementations()<cr>", { desc = "Telescope go to implementations" })
map("n", "<leader>fd", "<cmd>lua require('telescope.builtin').lsp_definitions()<cr>", { desc = "Telescope list definitions" })
map("n", "<leader>ft", "<cmd>lua require('telescope.builtin').lsp_type_definitions()<cr>", { desc = "Telescope go to type definition" })

-- Neogit --
map("n", "<leader>gs", "<cmd>lua require('neogit').open({ kind='split' })<CR>", { desc = "Neogit open"})
