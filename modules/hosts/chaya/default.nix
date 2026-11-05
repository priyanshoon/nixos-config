{
  self,
  inputs,
  ...
}: {
  flake.nixosConfigurations.chaya = inputs.nixpkgs.lib.nixosSystem {
    system = "x86_64-linux";

    modules = with self.nixosModules; [
      chaya
      core
      audio
      desktop
      nvim
      nvidia
      battery
      git
      tmux
      ai-slop
      network
      krita
      nix-ld
      systemTheme
    ];
  };
}
