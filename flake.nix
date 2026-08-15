{
    description = "uwu nixos config";
    
    nixConfig = {
        extra-substituters = [ "https://cache.nixos-cuda.org" ];
        extra-trusted-public-keys = [
	        "cache.nixos-cuda.org:74DUi4Ye579gUqzH4ziL9IyiJBlDpMRn9MBN8oNan9M="
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
        
        bootdev.url = "github:priyanshoon/bootdev-cli-flake";
        llm-agents.url = "github:numtide/llm-agents.nix";
        nixos-hardware.url = "github:NixOS/nixos-hardware/master";
    };

    outputs = inputs@{ nixpkgs, home-manager, ... }: {
        nixosConfigurations = {
            nixos = nixpkgs.lib.nixosSystem {
                system = "x86_64-linux";
                specialArgs = { inherit inputs; };
                modules = [
                    ./hosts/nixos/configuration.nix
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
