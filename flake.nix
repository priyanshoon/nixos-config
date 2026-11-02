{
  description = "uwu nixos";
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    flake-parts.url = "github:hercules-ci/flake-parts";
    import-tree.url = "github:vic/import-tree";
    wrappers.url = "github:nix-community/nix-wrapper-modules";

    # apps
    nvim.url = "github:priyanshoon/nvim";
    noctalia.url = "github:noctalia-dev/noctalia/cachix";
  };

  outputs = inputs:
    inputs.flake-parts.lib.mkFlake {inherit inputs;}
    (inputs.import-tree ./modules);
}
