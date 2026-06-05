{
	programs.nixvim = {
		plugins.fzf-lua = {
			enable = true;
			keymaps = {
				"<leader>pf" = "live_grep";
				"<leader>ff" = "files";
				"<C-p>" = "git_files";
			};
		};
	};
}
