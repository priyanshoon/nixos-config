{
  inputs,
  moduleWithSystem,
  ...
}: {
  flake.nixosModules.ghostty = moduleWithSystem ({
    pkgs,
    self',
    ...
  }: {
    environment.systemPackages = with self'.packages; [
      ghostty
    ];
  });
  perSystem = {
    pkgs,
    lib,
    ...
  }: {
    packages.ghostty = inputs.wrappers.wrappers.ghostty.wrap {
      inherit pkgs;
      settings = {
        theme = "Vague";
        font-family = "AnnotationM Nerd Font";
        cursor-style = lib.mkForce "block";
        background-opacity = 0.85;
      };
    };
  };
}
