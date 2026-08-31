{ lib, ... }: {
  programs.ghostty = {
    enable = true;
    settings = {
      theme = "Gruvbox Dark Hard";
      font-family = lib.mkForce "Mononoki Nerd Font";
      cursor-style = "block";
      font-size = 15;
    };
  };
}
