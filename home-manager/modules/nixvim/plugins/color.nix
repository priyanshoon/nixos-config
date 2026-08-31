{
  programs.nixvim = {
      colorschemes.everforest = {
          enable = true;
          settings = {
            transparent_background = 1;
            dim_inactive_windows = 1;
          };
      };
    # colorschemes.gruvbox = {
    #   enable = true;
    #   settings = {
    #     contrast = "hard";
    #     transparent_mode = true;
    #     dim_inactive = true;
    #   };
    # };
  };
}
