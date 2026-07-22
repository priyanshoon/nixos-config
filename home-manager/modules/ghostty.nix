{ lib, ... }: {
    programs.ghostty = {
        enable = true;
        settings = {
            background = "#181820";
            theme = "Kanagawa Wave";
            font-family = lib.mkForce "Mononoki Nerd Font";
            cursor-style = "block";
            font-size = 16;
            background-opacity = 0.9;
        };
    };
}
