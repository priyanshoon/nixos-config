{
    programs.nixvim = {
        colorschemes.catppuccin = {
            enable = true;
            callSetup = {
                flavour = "mocha";
                background = {
                    dark = "mocha";
                };
                transparent_background = true;
                dim_inactive = {
                    enabled = true;
                };
            };
        };
       # colorschemes.vague = {
       #     enable = true;
       #     settings = {
       #         transparent = true;
       #     };
       # };
    };
}
