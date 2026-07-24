{ lib, ... }: {
    programs.ghostty = {
        enable = true;
        settings = {
            # background = "#000000";
            theme = "Vague";
            font-family = lib.mkForce "Mononoki Nerd Font";
            cursor-style = "block";
            font-size = 16;
            # background-opacity = 0.9;
        };
    };
}
