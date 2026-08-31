{
  programs.nixvim = {
    plugins.fzf-lua = {
      enable = true;
      keymaps = {
        "<leader>pf" = "live_grep";
        "<leader>f" = "files";
        "<C-g>" = "git_files";
      };
    };
  };
}
