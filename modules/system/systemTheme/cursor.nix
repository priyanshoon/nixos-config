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
    environment.systemPackages = with pkgs; [
      gnome.adwaita-icon-theme
    ];

    environment.variables = {
      XCURSOR_THEME = "Adwaita";
      XCURSOR_SIZE = "24";
    };

    environment.etc."icons/default".source = "${pkgs.gnome.adwaita-icon-theme}/share/icons/Adwaita";

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
