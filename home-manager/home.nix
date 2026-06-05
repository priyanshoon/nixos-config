{ pkgs, inputs, ... }: {
    imports = [
        ./modules
        ./home-packages.nix
    ];

    home = {
        username = "priyanshoon";
        homeDirectory = "/home/priyanshoon";
        
        pointerCursor = {
            name = "Bibata-Modern-Ice";
            package = pkgs.bibata-cursors;
            size = 24;
        };

        stateVersion = "26.05";
    };

    xdg = {
        userDirs = {
            enable = true;
            desktop = "\$HOME/desktop";
            documents = "\$HOME/docs";
            download = "\$HOME/downloads";
            pictures = "\$HOME/pics";
            videos = "\$HOME/vids";
            setSessionVariables = true;
        };
    };
}
