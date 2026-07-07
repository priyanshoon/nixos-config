{ pkgs, inputs, ... }: {
    imports = [
        ./modules
        ./home-packages.nix
    ];

    home = {
        username = "priyanshoon";
        homeDirectory = "/home/priyanshoon";
        stateVersion = "26.05";
    };
}
