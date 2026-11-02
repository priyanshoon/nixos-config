{
  self,
  inputs,
  ...
}: {
  flake.nixosModules.bootloader = {
    pkgs,
    lib,
    ...
  }: {
    boot = {
      loader = {
        timeout = 2;
        efi = {
          canTouchEfiVariables = true;
        };
        grub = {
          efiSupport = true;
          device = "nodev";
        };
      };
    };
  };
}

