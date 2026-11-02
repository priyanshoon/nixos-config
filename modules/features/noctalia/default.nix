{
  self,
  inputs,
  ...
}: {
  flake.nixosModules.noctalia = {pkgs, ...}: {
    imports = [inputs.noctalia.nixosModules.default];
    programs.noctalia = {
      enable = true;
    };
  };
}
