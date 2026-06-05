{ pkgs, inputs, ... }: {
	imports = [ inputs.stylix.homeModules.stylix ];

	stylix = {
		enable = true;
		polarity = "dark";
		base16Scheme = "${pkgs.base16-schemes}/share/themes/vesper.yaml";
		targets = {
		  firefox.profileNames = [ "default" ];
			nixvim.enable = false;
			qt = {
			  enable = true;
				platform = "qtct";
			};
			alacritty.enable = false;
            noctalia-shell.enable = false;
            niri.enable = false;
			#          ghostty.enable = false;
			# vscode.enable = false;
			# waybar.enable = false;
			# wofi.enable = false;
			# hyprland.enable = false;
			# zed.enable = false;
		};

		cursor = {
			name = "Bibata-Modern-Classic";
			size = 24;
			package = pkgs.bibata-cursors;
		};

		fonts = {
			emoji = {
				name = "Noto Color Emoji";
				package = pkgs.noto-fonts-color-emoji;
			};
			monospace = {
				name = "Mononoki Nerd Font";
				package = pkgs.nerd-fonts.mononoki;
			};
			sansSerif = {
				name = "Noto Sans";
				package = pkgs.noto-fonts;
			};
			serif = {
				name = "Noto Serif";
				package = pkgs.noto-fonts;
			};
		};

		icons = {
			enable = true;
			package = pkgs.papirus-icon-theme;
			dark = "Papirus-Dark";
			light = "Papirus-Light";
		};
	};
}

