return {
	{
		"CopilotC-Nvim/CopilotChat.nvim",
		dependencies = {
			{ "nvim-lua/plenary.nvim", branch = "master" },
		},
		-- build = "make tiktoken",
		opts = {
			-- See Configuration section for options
			model = "claude-haiku-5.5", -- cheap default, use $<model> in a prompt for harder questions
			window = {
				layout = "vertical",
				border = "rounded", -- 'single', 'double', 'rounded', 'solid'
				title = "🤖 Copilot Chat",
				zindex = 100, -- Ensure window stays on top
			},
		},
	},
}
