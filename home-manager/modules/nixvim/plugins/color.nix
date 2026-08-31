{
  programs.nixvim = {
    # colorschemes.catppuccin = {
    #   enable = true;
    #   settings = {
    #     flavour = "mocha";
    #     background = {
    #       dark = "mocha";
    #     };
    #     transparent_background = true;
    #     dim_inactive = {
    #       enabled = true;
    #     };
    #   };
    # };
    # colorschemes.vague = {
    #     enable = true;
    #     settings = {
    #         transparent = true;
    #     };
    # };

      colorschemes.gruvbox = {
          enable = true;
          settings = {
              contrast = "hard";
              transparent_mode = true;
              dim_inactive = true;
          };
      };
  };
}
