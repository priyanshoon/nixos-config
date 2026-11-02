{
  inputs,
  moduleWithSystem,
  ...
}: {
  flake.nixosModules.niri = moduleWithSystem ({
    pkgs,
    self',
    ...
  }: {
    programs.niri = {
      enable = true;
      package = self'.packages.niri;
    };

    services.displayManager.defaultSession = "niri";
    services.xserver.enable = true;
    security.polkit.enable = true;
    services.seatd.enable = true;
  });
  perSystem = {
    pkgs,
    lib,
    ...
  }: {
    packages.niri = inputs.wrappers.wrappers.niri.wrap {
      inherit pkgs;
      "config.kdl".path = ./config.kdl;
      disableConfigHotReload = false;
    };
  };
}
