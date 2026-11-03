{
  self,
  inputs,
  ...
}: {
  flake.nixosModules.bibataCursors = {
    pkgs,
    lib,
    ...
  }: let
  in {
    fonts.packages = with pkgs; [
      dejavu_fonts
      noto-fonts
      noto-fonts-cjk-sans
      noto-fonts-color-emoji
      liberation_ttf
      fira-code
      fira-code-symbols
      mplus-outline-fonts.githubRelease
      dina-font
      proggyfonts
    ];
    fonts.packages = with pkgs.nerd-fonts; [
      hurmit
      fira-mono
      jetbrains-mono
    ];
    environment.systemPackages = with pkgs; [
      bibata-cursors
    ];

    environment.variables = {
      XCURSOR_THEME = "Bibata-Modern-Classic";
      XCURSOR_SIZE = "24";
    };

    programs.dconf.profiles.user.databases = [
      {
        lockAll = false;
        settings = {
          "org/gnome/desktop/interface" = {
            cursor-theme = "Bibata-Modern-Classic";
            font-name = "FiraMono Nerd Font 11";
          };
        };
      }
    ];
  };
}
