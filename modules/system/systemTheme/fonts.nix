{
  self,
  inputs,
  ...
}: {
  flake.nixosModules.fontiConfig = {
    pkgs,
    lib,
    ...
  }: let
  in {
    fonts = {
      enableDefaultPackages = true;
      fontconfig = {
        enable = true;
        defaultFonts = {
          serif = ["Liberation Serif"];
          sansSerif = ["Ubuntu"];
          monospace = ["Ubuntu Mono"];
        };
        useEmbeddedBitmaps = true;
      };
      packages = with pkgs; [
        nerd-fonts.hurmit
        ubuntu-classic
        liberation_ttf
        nerd-fonts.fira-mono
        nerd-fonts.jetbrains-mono
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
    };
  };
}
