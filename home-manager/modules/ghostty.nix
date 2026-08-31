{ lib, ... }: {
  programs.ghostty = {
    enable = true;
    settings = {
      theme = "Gruvbox Dark Hard";
      # background-image = "/home/priyanshoon/Pictures/Wallpapers/wallhaven-45gz65_1920x1080.png";
      font-family = lib.mkForce "Mononoki Nerd Font";
      cursor-style = "block";
      font-size = 15;
      # background-image-opacity = 0.8;
      # background-opacity = 0.9;
      # background-blur = true;
    };
  };
}
