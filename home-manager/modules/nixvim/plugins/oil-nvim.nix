{
  programs.nixvim = {
    plugins.oil = {
      enable = true;
      settings = {
        lsp_file_methods = {
          enabled = true;
          timeout_ms = 1000;
          autosave_changes = true;
        };

        float = {
          max_width = 0.3;
          max_height = 0.6;
          border = "rounded";
        };

      };
    };
  };
}
