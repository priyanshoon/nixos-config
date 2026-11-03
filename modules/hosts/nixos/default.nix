{
  self,
  inputs,
  ...
}: {
  flake.nixosConfigurations.nixos = inputs.nixpkgs.lib.nixosSystem {
    system = "x86_64-linux";

    modules = with self.nixosModules; [
      nixosConfiguration
      core
      audio
      desktop
      nvim
      git
      tmux
      network
      nix-ld
      systemTheme
    ];
  };
}
