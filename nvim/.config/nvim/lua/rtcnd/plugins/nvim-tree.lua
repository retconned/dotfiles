return {
	"nvim-tree/nvim-tree.lua",
	version = "*",
	lazy = false,
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		require("nvim-tree").setup({
			filters = { dotfiles = false },
			disable_netrw = true,
			hijack_cursor = true,
			sync_root_with_cwd = true,
			update_focused_file = {
				enable = true,
				update_root = false,
			},
			view = {
				width = 30,
				preserve_window_proportions = true,
			},
			renderer = {
				root_folder_label = false,
				highlight_git = true,
				indent_markers = { enable = true },
				icons = {
					glyphs = {
						default = "󰈚",
						folder = {
							default = "",
							empty = "",
							empty_open = "",
							open = "",
							symlink = "",
						},
						git = { unmerged = "" },
					},
				},
			},
		})

		-- local function open_tab_silent(node)
		-- 	local api = require("nvim-tree.api")
		--
		-- 	api.node.open.tab(node)
		-- 	vim.cmd.tabprev()
		-- end
		vim.api.nvim_set_keymap("n", "<leader>-", ":NvimTreeToggle<cr>", { silent = true, noremap = true })
		-- vim.keymap.set("n", "T", open_tab_silent, opts("Open Tab Silent"))
	end,
}
