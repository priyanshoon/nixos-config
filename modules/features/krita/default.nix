{
  inputs,
  moduleWithSystem,
  ...
}: {
  flake.nixosModules.krita = moduleWithSystem ({self', ...}: {
    environment.systemPackages = with self'.packages; [
      krita
    ];
  });

  perSystem = {pkgs, ...}: {
    packages.krita = inputs.wrappers.lib.wrapPackage ({...}: {
      inherit pkgs;
      package = pkgs.krita;

      env = {
        QT_QPA_PLATFORM = "wayland";
      };
    });
  };
}
