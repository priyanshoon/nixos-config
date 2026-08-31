{ lib, ... }: {
  programs.ghostty = {
    enable = true;
    settings = {
      theme = "Everforest Dark Hard";
      #ifont-family = lib.mkForce "Mononoki Nerd Font";
      # font-family = lib.mkForce "FiraCode Nerd Font";
      font-family = lib.mkForce "GeistMono Nerd Font";
      cursor-style = "block";
      font-size = 15;
    };
  };
}
