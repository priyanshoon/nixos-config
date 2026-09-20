{ lib, ... }: {
  programs.ghostty = {
    enable = true;
    settings = {
      theme = "Cursor Dark";
      background-opacity = 0.9;
      # theme = "Kanagawa Dragon";
      font-family = lib.mkForce "Mononoki Nerd Font";
      # font-family = lib.mkForce "FiraCode Nerd Font";
      # font-family = lib.mkForce "Hack Nerd Font Mono";
      # font-family = lib.mkForce "Terminess Nerd Font";
      # font-family = lib.mkForce "GeistMono Nerd Font";
      cursor-style = "block";
      font-size = 15.5;
    };
  };
}
