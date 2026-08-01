{ lib, ... }: {
    programs.ghostty = {
        enable = true;
        settings = {
            # background = "#000000";
            theme = "Vague";
            font-family = lib.mkForce "Consolas";
            cursor-style = "block";
            font-size = 16;
            # background-opacity = 0.9;
        };
    };
}
