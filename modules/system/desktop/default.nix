{
  self,
  moduleWithSystem,
  ...
}: {
  flake.nixosModules.desktop = moduleWithSystem ({pkgs, ...}: let
    modules = with self.nixosModules; [
      niri
      ghostty
      noctalia
      sddm
      network
    ];
  in {
    imports = modules;
    environment.systemPackages = with pkgs; [
      mpv
      alacritty
    ];
  });
}
