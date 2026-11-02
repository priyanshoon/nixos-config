{inputs, ...}: {
  perSystem = {system, ...}: {
    _module.args = {
      unfreePkgs = import inputs.nixpkgs {
        inherit system;
        config.allowUnfree = true;
      };
      unstablePkgs = import inputs.nixpkgs-unstable {
        inherit system;
      };
    };
  };
  flake.nixosModules.nix = {...}: {
    nix = {
      nixPath = ["nixpkgs=${inputs.nixpkgs}"];
      optimise.automatic = true;

      settings = {
        trusted-users = ["@wheel"];
        extra-substituters = ["https://noctalia.cachix.org"];
        extra-trusted-public-keys = ["noctalia.cachix.org-1:pCOR47nnMEo5thcxNDtzWpOxNFQsBRglJzxWPp3dkU4="];
        experimental-features = [
          "nix-command"
          "flakes"
        ];
      };
      gc = {
        automatic = true;
        dates = "daily";
        options = "--delete-older-than 5d";
      };
    };
    nixpkgs = {
      config = {
        allowUnfree = true;
        packageOverrides = pkgs: {
          unstable = import inputs.nixpkgs-unstable {
            config = {
              allowUnfree = true;
            };
          };
        };
      };
    };
  };
}
