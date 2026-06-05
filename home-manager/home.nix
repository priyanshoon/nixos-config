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

    xdg = {
        portal = {
            enable = true;
            config = {
                common = {
                    default = [
                        "gnome"
                    ];
                };
            };

            extraPortals = [
                pkgs.xdg-desktop-portal-gtk
                pkgs.xdg-desktop-portal-gnome
            ];
        };

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
