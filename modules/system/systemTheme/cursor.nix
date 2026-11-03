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
      adwaita-icon-theme
    ];

    environment.variables = {
      XCURSOR_THEME = "Adwaita";
      XCURSOR_SIZE = "24";
    };

    programs.dconf.profiles.user.databases = [
      {
        lockAll = false;
        settings = {
          "org/gnome/desktop/interface" = {
            cursor-theme = "Adwaita";
            font-name = "Ubuntu 11";
          };
        };
      }
    ];
  };
}
