{ lib, ... }: {
    programs.ghostty = {
        enable = true;
        settings = {
            # background = "#000000";
            theme = "Vague";
            # background-image = "/home/priyanshoon/Pictures/Wallpapers/wallhaven-45gz65_1920x1080.png";
            font-family = lib.mkForce "Consolas";
            cursor-style = "block";
            font-size = 16;
            # background-image-opacity = 0.8;
            # background-opacity = 0.9;
        };
    };
}
