{
  self,
  inputs,
  ...
}: {
  flake.nixosModules.user = {
    pkgs,
    lib,
    ...
  }: let
    modules = with self.nixosModules; [
      zsh
    ];
  in {
    imports = modules;
    users.users.pd = {
      isNormalUser = true;
      shell = lib.mkForce pkgs.zsh;
      description = "priyanshu gupta";
      extraGroups = [
        "audio"
        "video"
        "wheel"
        "networkmanager"
      ];
    };
  };
}
