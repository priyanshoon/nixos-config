{ lib, config, ... }: {
    programs = {
        bash = {
            enable = true;
        };

        zsh = {
            enable = true;
            enableCompletion = true;
            autosuggestion.enable = true;
            syntaxHighlighting.enable = true;

            shellAliases = {
                ls = "ls -lah --color";
                vippass="PASSWORD_STORE_DIR=$HOME/personal/.vip-password pass";
                cls = "clear";
                tmux = "tmux -u";
                nix-clean = "sudo nix-collect-garbage --delete-older-than 2d --cores 16 && nix-collect-garbage --delete-older-than 2d --cores 16";
                bt = "btop --force-utf";
                md = "mkdir";
                vi = "nvim";
            };

            history.size = 10000;
            history.path = "${config.xdg.dataHome}/zsh/history";
        };

        zoxide.enable = true;
        fzf.enable = true;
        jq.enable = true;
        btop = {
            enable = true;
            settings = {
                color_theme = lib.mkForce "kanagawa-wave";
                theme_background = lib.mkForce false;
            };
        };
        bat = {
            enable = true;
            config = {
                theme = "base16";
            };
        };

	starship = {
		enable = true;
		enableZshIntegration = true;
		settings = {
			add_newline = true;
			hostname = {
				ssh_only = false;
				format = "[$ssh_symbol$hostname]($style) ";
				style = "bold purple";
			};
			character = {
				success_symbol = "[ λ ](bold green)";
				error_symbol = "[ λ ](bold red)";
			};
			username = {
				show_always = true;
				format = "[$user]($style)@";
			};
			directory = {
				read_only = " 🔒";
				truncation_symbol = "…/";
			};
		};
	};	
    };
}
