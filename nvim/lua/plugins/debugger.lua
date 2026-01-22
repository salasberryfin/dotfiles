return {
	"mfussenegger/nvim-dap",
	dependencies = {
		"rcarriga/nvim-dap-ui",
		"mfussenegger/nvim-dap",
		"nvim-neotest/nvim-nio",
	},

	config = function()
		local dap = require("dap")
		local dapui = require("dapui")

		require("dap-go").setup()
		require("dapui").setup()

		dap.listeners.before.attach.dapui_config = function()
			dapui.open()
		end
		dap.listeners.before.launch.dapui_config = function()
			dapui.open()
		end
		dap.listeners.before.event_terminated.dapui_config = function()
			dapui.close()
		end
		dap.listeners.before.event_exited.dapui_config = function()
			dapui.close()
		end

		-- Keymaps
		vim.keymap.set("n", "<Leader>db", dap.toggle_breakpoint, { desc = "Add Breakpoint" })
		vim.keymap.set("n", "<Leader>dc", dap.continue, { desc = "Start/Continue" })
		vim.keymap.set("n", "<Leader>di", dap.step_into, { desc = "Step Into" })
		vim.keymap.set("n", "<Leader>do", dap.step_over, { desc = "Step Over" })
		vim.keymap.set("n", "<Leader>dt", require("dap-go").debug_test, { desc = "Debug Closest Test" })
	end,
}
