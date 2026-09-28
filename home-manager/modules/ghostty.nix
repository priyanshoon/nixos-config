{lib, ...}: {
  programs.ghostty = {
    enable = true;
    settings = {
      # theme = "Cursor Dark";
      theme = "Solarized Dark Higher Contrast";
      background = "#00141b";
      background-opacity = 0.87;
      # theme = "Kanagawa Dragon";
      # font-family = lib.mkForce "ComicShannsMono Nerd Font Mono";
      # font-family = lib.mkForce "Mononoki Nerd Font";
      # font-family = lib.mkForce "FiraCode Nerd Font";
      font-family = lib.mkForce "Hack Nerd Font Mono";
      # font-family = lib.mkForce "Terminess Nerd Font";
      # font-family = lib.mkForce "GeistMono Nerd Font";
      cursor-style = lib.mkForce "block";
      font-size = 16;
      background-blur = true;
    };
  };
}
