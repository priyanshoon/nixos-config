{
    description = "uwu nixos config";
    
    nixConfig = {
        extra-substituters = [ "https://noctalia.cachix.org" "https://pwndbg.cachix.org" ];
        extra-trusted-public-keys = [
            "noctalia.cachix.org-1:pCOR47nnMEo5thcxNDtzWpOxNFQsBRglJzxWPp3dkU4=" 
            "pwndbg.cachix.org-1:HhtIpP7j73SnuzLgobqqa8LVTng5Qi36sQtNt79cD3k="
        ];
    };

    inputs = {
        nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
        home-manager = {
            url = "github:nix-community/home-manager";
        };

        nixvim = {
            url = "github:nix-community/nixvim";
        };

        noctalia = {
            url = "github:noctalia-dev/noctalia/legacy-v4";
            inputs.nixpkgs.follows = "nixpkgs";
        };

        stylix = {
            url = "github:nix-community/stylix";
            inputs.nixpkgs.follows = "nixpkgs";
        };

        pwndbg.url = "github:pwndbg/pwndbg";
        nixos-hardware.url = "github:NixOS/nixos-hardware/master";
    };

    outputs = inputs@{ nixpkgs, home-manager, ... }: {
        nixosConfigurations = {
            higuruma = nixpkgs.lib.nixosSystem {
                system = "x86_64-linux";
                specialArgs = { inherit inputs; };
                modules = [
                    ./hosts/higuruma/configuration.nix
                ];
            };
        };

        homeConfigurations."priyanshoon" = home-manager.lib.homeManagerConfiguration {
            pkgs = nixpkgs.legacyPackages."x86_64-linux";
            extraSpecialArgs = { inherit inputs; };
            modules = [ ./home-manager/home.nix ];
        };
    };
}
