{lib, ...}: {
  programs.ghostty = {
    enable = true;
    settings = {
      theme = "Solarized Dark Patched";
      background = "#00191A";
      background-opacity = 0.85;
      # font-family = lib.mkForce "ComicShannsMono Nerd Font Mono";
      font-family = lib.mkForce "Mononoki Nerd Font";
      # font-family = lib.mkForce "FiraCode Nerd Font";
      # font-family = lib.mkForce "Hack Nerd Font Mono";
      # font-family = lib.mkForce "Terminess Nerd Font";
      # font-family = lib.mkForce "GeistMono Nerd Font";
      cursor-style = lib.mkForce "block";
      font-size = 16;
      background-blur = true;
    };
  };
}
